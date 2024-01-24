import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "facebook",
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 28,
                onPressed: () {},
                margin: EdgeInsets.only(right: 10),
              ),
              CircleButton(
                icon: Icons.search,
                iconSize: 28,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
