import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({
    super.key,
    required this.onlineUsers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.orange,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(2),
            width: 40,
            height: 20,
            color: Colors.red,
          );
        },
      ),
    );
  }
}
