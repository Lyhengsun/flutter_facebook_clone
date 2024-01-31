import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/state_module/post_notifier.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class PostContainer extends StatefulWidget {
  final Post post;

  const PostContainer({super.key, required this.post});

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      padding: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _PostHeader(
                  post: widget.post,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(widget.post.caption),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          widget.post.imageURL == null
              ? SizedBox.shrink()
              : CachedNetworkImage(
                  imageUrl: widget.post.imageURL!,
                ),
          Divider(
            height: 0,
            thickness: 1,
          ),
          MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (x) => PostNotifier(post: widget.post),
              )
            ],
            child: _PostFooter(
              post: widget.post,
            ),
          )
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl: post.user.imageURL,
          isActive: post.user.isActive,
          addStory: post.user.addStory,
          viewedStory: post.user.viewedStory,
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
                post.user.name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${post.timeAgo} • ",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
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
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        )
      ],
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
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Text(
            "${context.watch<PostNotifier>().comments} comments",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "${context.watch<PostNotifier>().shares} shares",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// Expanded _PostButtonSimple(BuildContext context, Icon icon, Icon? tappedIcon, VoidCallback onTap) {
//   return Expanded(
//       child: Material(
//         child: InkWell(
//           onTap: () {
//             isTap = !isTap;
//             print("ok");
//             onTap;
//           },
//           child: Container(
//             height: 30,
//             width: double.infinity,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 isTap && tappedIcon != null
//                     ? tappedIcon!
//                     : icon,
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Text(
//                   widget.label,
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                     color: isTap && widget.tappedIcon != null
//                         ? widget.tappedIcon!.color
//                         : widget.icon.color,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
// }

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
      children: [
        _PostStats(),
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
        )
      ],
    );
  }
}