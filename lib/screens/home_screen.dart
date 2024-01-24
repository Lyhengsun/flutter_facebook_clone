import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_clone/config/palett.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/widget/circle_button.dart';
import 'package:flutter_facebook_clone/widget/create_post_container.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () => print('Search'),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () => print('facebook messager'),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
        ],
      ),
    );
  }
}
