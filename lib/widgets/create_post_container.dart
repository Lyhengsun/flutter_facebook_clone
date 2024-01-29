import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  CreatePostContainer({
    Key? key,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage(
                  currentUser.imageUrl,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mide?',
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () => print('Live'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Live'),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () => print('Photo'),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text('Photo'),
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () => print('Room'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.red,
                  ),
                  label: Text('Room'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
