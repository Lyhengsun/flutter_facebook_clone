import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/widget_config.dart';
import 'package:flutter_facebook_clone/data/data.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var newNotification = <NotificationModel>[];
    var todayNotification = <NotificationModel>[];
    var earlierNotification = <NotificationModel>[];

    for (final notification in notifications) {
      if (notification.duration.inHours < 1) {
        newNotification.add(notification);
        continue;
      }
      if (notification.duration.inHours < 5) {
        todayNotification.add(notification);
        continue;
      }
      earlierNotification.add(notification);
    }

    bool newNotificationActive = (newNotification.length > 0) ? true : false;
    bool earlierNotificationActive =
        (earlierNotification.length > 0) ? true : false;
    bool todayNotificationActive =
        (todayNotification.length > 0) ? true : false;

    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  height: WidgetConfig.appBarHeight,
                  width: double.maxFinite,
                ),
              ),
              SliverToBoxAdapter(
                child: newNotificationActive
                    ? _buildNotificationHeader("New")
                    : SizedBox.shrink(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: newNotification.length,
                  (context, index) {
                    final NotificationModel notification =
                        newNotification[index];
                    return NotificationContainer(
                      notification: notification,
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: todayNotificationActive
                    ? _buildNotificationHeader("Today")
                    : SizedBox.shrink(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: todayNotification.length,
                  (context, index) {
                    final NotificationModel notification =
                        todayNotification[index];
                    return NotificationContainer(
                      notification: notification,
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: earlierNotificationActive
                    ? _buildNotificationHeader("Earlier")
                    : SizedBox.shrink(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: earlierNotification.length,
                  (context, index) {
                    final NotificationModel notification =
                        earlierNotification[index];
                    return NotificationContainer(
                      notification: notification,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: WidgetConfig.appBarHeight,
          child: FacebookScreenAppBar(
            title: "Notifications",
            actions: [
              CircleButton(
                icon: Icons.settings,
                onPressed: () {},
              ),
              CircleButton(
                icon: Icons.search,
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildNotificationHeader(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      width: double.maxFinite,
      height: 25,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
