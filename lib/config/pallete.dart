import 'package:flutter/material.dart';

class Palette {
  static Color scaffold = Color(0xfff0f2f5);

  static Color facebookBlude = Color(0xff1777f2);

  static LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xff496ae1), Color(0xffce48b1)],
  );

  static Color online = Color(0xff4bcb1f);

  static LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black26],
    );
}
