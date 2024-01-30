import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF4F4F4),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: const Text(
                "facebook",
                style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 28,
                  onPressed: () {},
                  margin: EdgeInsets.only(right: 10),
                ),
                CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 23,
                  onPressed: () {},
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(
                currentUser: currentUser,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(
                  onlineUsers: onlineUsers,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Stories(
                  currentUser: currentUser,
                  stories: stories,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: posts.length,
                (context, index) {
                  final Post post = posts[index];
                  return PostContainer(
                    post: post,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
