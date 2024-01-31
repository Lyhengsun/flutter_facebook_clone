import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final Color? backgroundColor;
  final Color? unviewedStory;
  final bool isActive;
  final bool addStory;
  final bool viewedStory;

  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    this.backgroundColor = null,
    this.unviewedStory = null,
    this.isActive = false,
    this.addStory = false,
    this.viewedStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Colors.black45.withOpacity(0.2),
          border: Border.all(
              color: viewedStory ? unviewedStory ?? Colors.white : Palette.facebookBlue,
              width: addStory ? 2 : 0)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: CachedNetworkImageProvider(imageUrl),
              radius: addStory ? 16 : 20),
          isActive
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Palette.online,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
