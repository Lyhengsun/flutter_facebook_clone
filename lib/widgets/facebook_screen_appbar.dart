import 'package:flutter/material.dart';

class FacebookScreenAppBar extends StatelessWidget {
  final String title;
  final Color titleColor;
  final List<Widget>? actions;


  const FacebookScreenAppBar({super.key, required this.title, this.titleColor = Colors.black,this.actions,});

  @override
  Widget build(BuildContext context) {
    List<Widget> combinedActions = [];
    if (actions != null) {
      combinedActions.addAll(actions!);
      combinedActions.add(SizedBox(width: 7,));
    }
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Row(
          children: combinedActions,
        )
      ],
    );
  }
}
