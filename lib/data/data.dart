import 'package:flutter_facebook_clone/models/models.dart';

final User currentUser = User(
  name: "Sothea Mab",
  imageUrl: "assets/images/img1(8).jpg",
);

final List<User> onlineUser = [
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1(1).jpg",
  ),
  User(
    name: "Tun Tun",
    imageUrl: "assets/images/img1(2).jpg",
  ),
  User(
    name: "Putny",
    imageUrl: "assets/images/img1(3).jpg",
  ),
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1(5).jpg",
  ),
  User(
    name: "Tun Tun",
    imageUrl: "assets/images/img1(6).jpg",
  ),
  User(
    name: "Putny",
    imageUrl: "assets/images/img1(7).jpg",
  ),
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1(9).jpg",
  ),
  User(
    name: "Tun Tun",
    imageUrl: "assets/images/img1 (10).jpg",
  ),
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1(11).jpg",
  ),
  User(
    name: "Tun Tun",
    imageUrl: "assets/images/img1(12).jpg",
  ),
  User(
    name: "Putny",
    imageUrl: "assets/images/img1(13).jpg",
  ),
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1(14).jpg",
  )
];

final List<Story> stories = [
  Story(
    user: onlineUser[1],
    imageUrl: "assets/images/img1(8).jpg",
  ),
  Story(
    user: onlineUser[2],
    imageUrl: 'assets/images/img1(1).jpg',
  ),
  Story(
    user: onlineUser[3],
    imageUrl: 'assets/images/img1(2).jpg',
  ),
  Story(
    user: onlineUser[4],
    imageUrl: 'assets/images/img1(3).jpg',
  ),
  Story(
    user: onlineUser[5],
    imageUrl: 'assets/images/img1(4).jpg',
  ),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: "I love SD",
    timeAgo: "30m",
    imageUrl: "assets/images/img1(8).jpg",
    likes: 200,
    comments: 129,
    shares: 12,
  ),
  Post(
    user: onlineUser[0],
    caption: "Roem Reaksmey",
    timeAgo: "20m",
    imageUrl: "assets/images/img1(8).jpg",
    likes: 12,
    comments: 12,
    shares: 12,
  ),
  Post(
    user: onlineUser[0],
    caption: "Tun Tun",
    timeAgo: "90m",
    imageUrl: "assets/images/img1(8).jpg",
    likes: 56,
    comments: 56,
    shares: 56,
  ),
];
