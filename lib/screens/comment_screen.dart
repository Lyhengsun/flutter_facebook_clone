import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_clone/state_module/post_notifier.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

class CommentScreen extends StatefulWidget {
  final Post post;

  const CommentScreen({
    super.key,
    required this.post,
  });

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
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
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: WidgetConfig.appBarHeight,
                  width: double.maxFinite,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    widget.post.caption,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: widget.post.imageURL == null
                    ? SizedBox.shrink()
                    : CachedNetworkImage(
                        imageUrl: widget.post.imageURL!,
                      ),
              ),
              SliverToBoxAdapter(
                child: MultiProvider(
                  providers: [
                    ChangeNotifierProvider(
                      create: (x) => PostNotifier(post: widget.post),
                    )
                  ],
                  child: _PostFooter(
                    post: widget.post,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: WidgetConfig.appBarHeight,
            child: AppBar(
              leadingWidth: 30,
              centerTitle: false,
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              title: Container(
                child: Row(
                  children: [
                    ProfileAvatar(
                      size: 35,
                      imageUrl: widget.post.user.imageURL,
                      isActive: widget.post.user.isActive,
                      addStory: widget.post.user.addStory,
                      viewedStory: widget.post.user.viewedStory,
                      backgroundColor: Colors.white,
                      unviewedStory: Colors.grey,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.post.user.name,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FacebookDurationLabel(
                                duration: widget.post.timeAgo,
                              ),
                              Text(
                                " • ",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black54),
                              ),
                              Icon(
                                Icons.public,
                                size: 12,
                                color: Colors.black54,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PostStats extends StatefulWidget {
  // final Post post;

  const _PostStats({
    super.key,
    // required this.post,
  });

  @override
  State<_PostStats> createState() => _PostStatsState();
}

class _PostStatsState extends State<_PostStats> {
  // late Post localPost;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   localPost = widget.post;
  // }

  @override
  Widget build(BuildContext context) {
    double fontSize = 12;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                shape: BoxShape.circle, gradient: Palette.likeGradient),
            child: Icon(
              Icons.thumb_up,
              color: Colors.white,
              size: 8,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            context.watch<PostNotifier>().likes.toString(),
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}

class _PostButton extends StatefulWidget {
  final VoidCallback onTap;
  final String label;
  final Icon icon;
  final Icon? tappedIcon;
  final Colors? tappedColor;

  const _PostButton(
      {super.key,
      required this.onTap,
      required this.label,
      required this.icon,
      this.tappedIcon,
      this.tappedColor});

  @override
  State<_PostButton> createState() => _PostButtonState();
}

class _PostButtonState extends State<_PostButton> {
  late bool isTap;

  @override
  void initState() {
    // TODO: implement initState
    isTap = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {
            setState(() {
              isTap = !isTap;
            });
            widget.onTap();
          },
          child: Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isTap && widget.tappedIcon != null
                    ? widget.tappedIcon!
                    : widget.icon,
                SizedBox(
                  width: 4,
                ),
                Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: isTap && widget.tappedIcon != null
                        ? widget.tappedIcon!.color
                        : widget.icon.color,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PostFooter extends StatefulWidget {
  final Post post;

  const _PostFooter({super.key, required this.post});

  @override
  State<_PostFooter> createState() => _PostFooterState();
}

class _PostFooterState extends State<_PostFooter> {
  bool likePressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            height: 0,
          ),
        ),
        Container(
          child: Row(
            children: [
              _PostButton(
                onTap: () {
                  setState(
                    () {
                      likePressed = !likePressed;
                      if (likePressed) {
                        context.read<PostNotifier>().likeIncrease();
                      } else {
                        context.read<PostNotifier>().likeDecrease();
                      }
                    },
                  );
                },
                label: "Like",
                icon: Icon(
                  MdiIcons.thumbUpOutline,
                  size: 16,
                  color: Colors.black54,
                ),
                tappedIcon: Icon(
                  MdiIcons.thumbUp,
                  size: 16,
                  color: Palette.facebookBlue,
                ),
              ),
              _PostButton(
                onTap: () {},
                label: "Comment",
                icon: Icon(
                  MdiIcons.commentOutline,
                  size: 16,
                  color: Colors.black54,
                ),
              ),
              _PostButton(
                onTap: () {},
                label: "Share",
                icon: Icon(
                  MdiIcons.shareOutline,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            height: 0,
          ),
        ),
        _PostStats(),
        Container(
          child: Divider(
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 12,
          ),
          child: Text(
            "${context.watch<PostNotifier>().shares} shares",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
