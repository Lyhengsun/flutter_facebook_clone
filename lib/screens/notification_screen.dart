import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: WidgetConfig.appBarHeight,
          child: FacebookScreenAppBar(
            title: "Notifications",
            actions: [
              CircleButton(icon: Icons.settings, onPressed: () {},),
              CircleButton(icon: Icons.search, onPressed: () {},),
            ],
          ),
        )
      ],
    );
  }
}
