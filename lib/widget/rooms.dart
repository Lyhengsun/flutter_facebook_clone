import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';

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
      color: Colors.orange,
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
          return Container(
            margin: const EdgeInsets.all(2.0),
            height: 20.0,
            width: 20.0,
            color: Colors.red,
          );
        },
      ),
    );
  }
}

// This Widget Add new
class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Create Room'),
      child: null,
    );
  }
}
