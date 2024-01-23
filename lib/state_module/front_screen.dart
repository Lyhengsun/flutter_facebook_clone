import 'package:flutter/material.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  int _currentIndex = 0;
  final AppBar _appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  PreferredSizeWidget _buildTop() {
    return AppBar();
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
        Container(color: Colors.green,),
        Container(color: Colors.yellow,),
        Container(color: Colors.purple,),
        Container(color: Colors.cyan,)
      ],);
  }


  Widget _buildBottom() {
    // TextStyle textStyle = TextStyle(fontSize: 12);

    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blueAccent.shade400,
      selectedLabelStyle: TextStyle(overflow: TextOverflow.visible, fontSize: 8),
      unselectedLabelStyle: TextStyle(overflow: TextOverflow.visible, fontSize: 8),
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.video_stable), label: "Video"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Marketplace"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
      ],
    );
  }
}
