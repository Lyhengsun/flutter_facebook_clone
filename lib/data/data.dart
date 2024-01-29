import 'package:flutter_facebook_clone/models/models.dart';

// For current User
final User currentUser = User(
  name: "Sothea Mab",
  imageUrl:
      "assets/images/img1(8).jpg",
);

// for online user
final List<User> onlineUsers = [
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  User(
    name: "Sothea Mab",
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
];

// for stories user
final List<Story> stories = [
  Story(
    user: onlineUsers[0],
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Story(
    user: onlineUsers[0],
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Story(
    user: onlineUsers[0],
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
  Story(
    user: onlineUsers[0],
    imageUrl:
        "https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ),
];

// for user post
final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'How are you pro?',
    timeAgo: '43m',
    imageUrl:
        'https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    likes: 1220,
    comments: 4434,
    shares: 168,
  ),
  Post(
    user: onlineUsers[1],
    caption: 'How are you pro?',
    timeAgo: '43m',
    imageUrl:
        'https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    likes: 1220,
    comments: 4434,
    shares: 168,
  ),
  Post(
    user: onlineUsers[2],
    caption: 'I am fine!,Thank',
    timeAgo: '33m',
    imageUrl:
        'https://images.unsplash.com/photo-1558280417-ea782f829e93?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    likes: 111,
    comments: 222,
    shares: 333,
  ),
];
