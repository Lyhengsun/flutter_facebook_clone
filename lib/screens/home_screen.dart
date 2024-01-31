import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class HomeScreen extends StatefulWidget {
  final ScrollController scrollController;

  const HomeScreen({super.key, required this.scrollController});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showAppBar = true;

  @override
  void initState() {
    widget.scrollController.addListener(() {
      if (widget.scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        showAppBar = false;
        setState(() {});
      } else {
        showAppBar = true;
        setState(() {});
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.grey.shade400,
          child: CustomScrollView(
            controller: widget.scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 75,
                  width: double.maxFinite,
                  color: Colors.white,
                ),
              ),
              SliverToBoxAdapter(
                child: CreatePostContainer(
                  currentUser: currentUser,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
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
              ),
            ],
          ),
        ),
        AnimatedContainer(
          curve: Curves.easeInOutSine,
          duration: const Duration(milliseconds: 150),
          height: showAppBar ? 75 : 0,
          child: AppBar(
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
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
                margin: const EdgeInsets.only(right: 10),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 23,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
