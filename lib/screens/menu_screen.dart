import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/data/data.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        toolbarHeight: WidgetConfig.statusBarHeight,
        backgroundColor: Colors.grey.shade300,
        scrolledUnderElevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FacebookScreenAppBar(
              title: "Menu",
              backgroundColor: Colors.grey.shade300,
            ),
          ),
          SliverToBoxAdapter(
            child: _buildMenuHeader(),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Your shortcuts",
                style: TextStyle(
                  height: 0,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildShortcutsListView(),
          )
        ],
      ),
    );
  }

  Widget _buildMenuHeader() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.maxFinite,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ]),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 13,
        ),
        child: Stack(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileAvatar(
                    imageUrl: currentUser.imageURL,
                    size: 38,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    currentUser.name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  CircleButton(
                    icon: Icons.arrow_drop_down,
                    buttonSize: 28,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildShortcutsListView() {
    return Container(
      height: 115,
      color: Colors.orange,
      padding: EdgeInsets.symmetric(vertical: 13),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: 60,
            height: double.maxFinite,
            color: Colors.red,
            child: Column(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageURL,
                  size: 55,
                ),
                Text(
                  currentUser.name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
