import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: WidgetConfig.statusBarHeight,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: WidgetConfig.appBarHeight,
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
                  child: _friendRequestHeader(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: friendRequests.length,
                    // childCount: 5,
                    (context, index) {
                      // if (index > friendRequests.length-1) {
                      //   return SizedBox.shrink();
                      // }
                      final FriendRequest friendRequest = friendRequests[index];
                      return FriendRequestContainer(
                        friendRequest: friendRequest,
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: FacebookWideLabelButtonContainer(
                    label: "See all",
                    onTap: () {
                      Navigator.pushNamed(context, "seeAllPage");
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: _divider(),
                ),
                const SliverToBoxAdapter(
                  child: _friendSuggestionHeader(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: friendSuggestions.length,
                    (context, index) {
                      final FriendRequest friendRequest =
                          friendSuggestions[index];
                      return FriendSuggestionContainer(
                        friendRequest: friendRequest,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: WidgetConfig.appBarHeight,
              child: FacebookScreenAppBar(
                title: "Friends",
                actions: [
                  CircleButton(
                    icon: Icons.search,
                    onPressed: () {},
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.shade300,
      ),
    );
  }

  Widget _seeAllButton() {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      color: Colors.white,
      // height: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "seeAllPage");
        },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: const Text(
            "See all",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class _friendRequestHeader extends StatelessWidget {
  const _friendRequestHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: Row(
        children: [
          const Text(
            "Friend requests",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "seeAllPage");
            },
            child: const Text(
              "See all",
              style: TextStyle(color: Palette.facebookBlue),
            ),
          ),
        ],
      ),
    );
  }
}

class _friendSuggestionHeader extends StatelessWidget {
  const _friendSuggestionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      child: const Row(
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
