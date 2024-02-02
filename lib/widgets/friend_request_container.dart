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
                  _buildFriendRequestHeaderWidget(),
                  SizedBox(
                    height: 5,
                  ),
                  _buildMutualFriendsWidget(),
                  Spacer(),
                  _buildFriendReqButtons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFriendRequestHeaderWidget() {
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

  Widget _buildMutualFriendsWidget() {
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

  Widget _buildFriendReqButtons() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Palette.facebookBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                "Confirm",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Text(
                "Delete",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
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
