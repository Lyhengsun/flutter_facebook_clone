import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final VoidCallback onPressed;
  final EdgeInsets margin;

  const CircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize = null,
    this.margin = const EdgeInsets.only(right: 8),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      // height: 30,
      margin: margin,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          color: Colors.black,
          size: iconSize,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
