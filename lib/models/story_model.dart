import 'package:flutter_facebook_clone/models/user_model.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:meta/meta.dart';

class Story {
  final User user;
  final String? imageUrl;  // Non-null imageUrl
  final bool isViewed;

  const Story({
    required this.user,
    this.imageUrl,
    this.isViewed = false,
  });
}
