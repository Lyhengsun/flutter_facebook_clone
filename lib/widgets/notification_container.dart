import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';
import 'package:flutter_facebook_clone/config/notification_type_map.dart';

class NotificationContainer extends StatelessWidget {
  final NotificationModel notification;

  const NotificationContainer({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 15,
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  width: 65,
                  padding: EdgeInsets.only(right: 5),
                  child: ProfileAvatar(
                    imageUrl: notification.user.imageURL,
                    size: 60,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: NotificationTypeToIconButtonMap[notification.type] ??
                      SizedBox.shrink(),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: notification.user.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              " ${NotificationTypeToMessageMap[notification.type]!}: \"${notification.message}\"",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: 4,
                  ),
                ),
                Container(
                  child: FacebookDurationLabel(
                    duration: notification.duration,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 25,
            color: Colors.white,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
