import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey.shade400,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 75,
                  width: double.maxFinite,
                  color: Colors.white,
                ),
              ),
              const SliverToBoxAdapter(
                child: FriendsFilterContainer(),
              ),
              SliverToBoxAdapter(
                child: _divider(),
              ),
              const SliverToBoxAdapter(
                child: FriendRequestHeader(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: friendRequests.length,
                  (context, index) {
                    final FriendRequest friendRequest = friendRequests[index];
                    return FriendRequestContainer(
                      friendRequest: friendRequest,
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: _seeAllButton(),
              ),
              SliverToBoxAdapter(
                child: _divider(),
              ),
              SliverToBoxAdapter(
                child: FriendSuggestionHeader(),
              ),
            ],
          ),
        ),
        Container(
          height: 75,
          child: AppBar(
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            title: const Text(
              "Friends",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 25,
                onPressed: () {},
                margin: const EdgeInsets.only(right: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }

  Widget _seeAllButton() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.maxFinite,
      color: Colors.white,
      // height: 20,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Text(
          "See all",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class FriendRequestHeader extends StatelessWidget {
  const FriendRequestHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: [
          Text(
            "Friend requests",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              "See all",
              style: TextStyle(color: Palette.facebookBlue),
            ),
          )
        ],
      ),
    );
  }
}

class FriendSuggestionHeader extends StatelessWidget {
  const FriendSuggestionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: [
          Text(
            "People you may know",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
