import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageURL,
                  isActive: true,
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.grey,
                //   backgroundImage:
                //       CachedNetworkImageProvider(currentUser.imageURL),
                // ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "What\'s on your mind today?",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  onPressed: () {},
                  icon: Icons.videocam,
                  label: const Text("Live"),
                ),
                ActionButton(
                  onPressed: () {},
                  icon: Icons.photo_library,
                  label: const Text("Photo"),
                  foregroundColor: Colors.green,
                ),
                ActionButton(
                  onPressed: () {},
                  icon: Icons.video_call,
                  label: const Text("Room"),
                  foregroundColor: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
