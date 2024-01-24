import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.orange,
    );
  }
}
