import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_clone/config/palett.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  iconSize: 30.0,
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200], shape: BoxShape.circle),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  iconSize: 30.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
