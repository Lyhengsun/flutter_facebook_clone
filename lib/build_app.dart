import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/state_module/front_screen.dart';

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontScreen(),
    );
  }
}