import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

import 'package:flutter_facebook_clone/data/data.dart';

class FriendRequestContainer extends StatelessWidget {
  final FriendRequest friendRequest;

  const FriendRequestContainer({super.key, required this.friendRequest});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileAvatar(
            imageUrl: friendRequest.user.imageURL,
            size: 85,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFriendRequestHeaderWidget(),
                  SizedBox(
                    height: 5,
                  ),
                  buildMutualFriendsWidget(),
                  Spacer(),
                  buildFriendReqButtons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @protected
  Widget buildFriendRequestHeaderWidget() {
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              friendRequest.user.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Spacer(),
          Text(
            _getDurationString(friendRequest.requestDuration),
            style: TextStyle(
              fontSize: 10,
              color: Colors.black54,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  @protected
  Widget buildMutualFriendsWidget() {
    return Row(
      children: [
        Container(
          color: Colors.white,
          width: 42,
          height: 24,
          child: Stack(
            children: [
              Positioned(
                left: 18,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white)),
                  child: ProfileAvatar(
                    imageUrl: onlineUsers[1].imageURL,
                    size: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white)),
                child: ProfileAvatar(
                  imageUrl: onlineUsers[0].imageURL,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "${friendRequest.mutualFriendsAmount} mutual friends",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        )
      ],
    );
  }

  @protected
  Widget buildFriendReqButtons() {
    return Row(
      children: [
        FriendReqButton(
          label: "Confirm",
          backgroundColor: Palette.facebookBlue,
          foregroundColor: Colors.white,
          onTap: () { print("Confirmed"); },
        ),
        SizedBox(
          width: 4,
        ),
        FriendReqButton(
          label: "Delete",
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.black,
          onTap: () {},
        ),
      ],
    );
  }

  String _getDurationString(Duration duration) {
    if (duration.inSeconds < 60) {
      return "${(duration.inSeconds).toInt()}s";
    }
    if (duration.inMinutes < 60) {
      return "${(duration.inMinutes).toInt()}m";
    }
    if (duration.inHours < 24) {
      return "${(duration.inHours).toInt()}h";
    }
    if (duration.inDays < 7) {
      return "${(duration.inDays).toInt()}d";
    }
    if (duration.inDays < 365) {
      return "${(duration.inDays / 7).toInt()}w";
    }
    return "${(duration.inDays / 365).toInt()}y";
  }
}

class FriendReqButton extends StatefulWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onTap;

  const FriendReqButton({
    super.key,
    required,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onTap,
  });

  @override
  State<FriendReqButton> createState() => _FriendReqButtonState();
}

class _FriendReqButtonState extends State<FriendReqButton> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: (_) {
          widget.onTap();
          isTap = true;
          setState(() {});
        },
        onTapUp: (_) {
          isTap = false;
          setState(() {});
        },
        child: Transform.scale(
          scale: isTap ? 0.95 : 1,
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.foregroundColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
