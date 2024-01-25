import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palett.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widget/widgets.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;

  const Room({
    Key? key,
    required this.onlineUsers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: _CreateRoomButton(),
            );
          }

          // Declear new varaible like User
          final User user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

// This Widget Add new
// class _CreateRoomButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: () => print('Create Room!'),
//       style: OutlinedButton.styleFrom(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         color: Colors.white,
//         borderSide: BorderSide(
//           width: 3.0,
//           color: Colors.blueAccent,
//         ),
//       ),
//       child: Text('Create Room'), // Provide a non-null child
//     );
//   }
// }

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room!'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        side: BorderSide(
          width: 3.0,
          color: Colors.blueAccent,
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) => Palette.createRoomGradient.createShader(
              rect,
            ),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            'Create\nRoom',
            style: TextStyle(fontSize: 11.0),
          ),
        ],
      ), // Provide a non-null child
    );
  }
}
