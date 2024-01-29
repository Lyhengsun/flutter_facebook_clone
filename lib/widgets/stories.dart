import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({super.key, required this.currentUser, required this.stories });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.orange,
      // child: Placeholder(),
    );
  }
}