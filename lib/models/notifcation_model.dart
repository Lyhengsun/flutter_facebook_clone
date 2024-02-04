import 'package:flutter_facebook_clone/models/models.dart';

enum NotificationType {
  updatePost,
  linkPost,
  videoPost,
  sharedPost,
  likeComment,
  reactToComment,
  mention,
}

class NotificationModel {
  final User user;
  final NotificationType type;
  final Duration duration;
  final String message;
  final bool checked;

  NotificationModel({
    required this.user,
    required this.type,
    required this.duration,
    this.message = "",
    this.checked = false,
  });
}
