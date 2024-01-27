import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        color: Colors.orange,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage:
                      CachedNetworkImageProvider(currentUser.imageURL),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "What\'s on your mind today?",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  onPressed: () {},
                  icon: Icons.videocam,
                  label: Text("Live"),
                ),
                ActionButton(
                  onPressed: () {},
                  icon: Icons.photo,
                  label: Text("Photo"),
                ),
                ActionButton(
                  onPressed: () {},
                  icon: Icons.cameraswitch,
                  label: Text("Room"),
                ),
              ],
            ),
          ],
        ));
  }
}
