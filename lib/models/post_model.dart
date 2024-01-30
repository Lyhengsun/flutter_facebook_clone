import 'package:flutter_facebook_clone/models/models.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imageURL;
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    this.imageURL,
    this.likes = 0,
    this.comments = 0,
    this.shares = 0
    });
}