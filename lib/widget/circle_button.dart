import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
        iconSize: 30.0,
      ),
    );
  }
}
