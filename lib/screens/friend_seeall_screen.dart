import 'package:flutter/material.dart';

class FriendSeeAllScreen extends StatelessWidget {
  const FriendSeeAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Placeholder(),
        Container(
          height: 75,
          child: AppBar(backgroundColor: Colors.red,)),
      ],
    );
  }
}
