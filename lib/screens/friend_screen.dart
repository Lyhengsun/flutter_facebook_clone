import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

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
              SliverToBoxAdapter(
                child: FriendsFilterContainer(),
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
}
