import 'package:flutter_facebook_clone/models/models.dart';

final User currentUser = User(
  name: "Aijou Rentarou",
  imageURL:
      "https://static.wikia.nocookie.net/100kanojo/images/e/e2/RentarouAnimeInfobox.png/revision/latest?cb=20240118045820",
  isActive: true,
);

final List<User> onlineUsers = [
  User(
    name: "Hanazono Hakari",
    imageURL: "https://static.wikia.nocookie.net/100kanojo/images/0/0a/HakariAnimeInfobox.png/revision/latest?cb=20240118051455",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Inda Karane",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/6/69/KaraneAnimeInfobox.png/revision/latest?cb=20240118051853",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Yoshimoto Shizuka",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/1/16/ShizukaAnimeInfobox.png/revision/latest?cb=20240118071619",
    isActive: true,
    addStory: true,
    viewedStory: false,
  ),
  User(
    name: "Eiai Nano",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/f/fa/NanoAnimeInfobox.png/revision/latest?cb=20240118071204",
    isActive: true,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Yakuzen Kusuri",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/f/fb/KusuriAnimeInfobox.png/revision/latest?cb=20240118080342",
    isActive: false,
    addStory: true,
    viewedStory: true,
  ),
  User(
    name: "Hanazono Hahari",
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/3/30/HahariAnimeInfobox.png/revision/latest?cb=20240118082226",
    isActive: false,
    addStory: true,
    viewedStory: false,
  )
];

String rentaruImageURL = "https://static.wikia.nocookie.net/100kanojo/images/e/e2/RentarouAnimeInfobox.png/revision/latest?cb=20240118045820";
String blankImageURL = "https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg";

final List<Story> stories = [
  Story(
      user: onlineUsers[2],
      imageURL: rentaruImageURL),
  Story(
      user: onlineUsers[3],
      imageURL: rentaruImageURL),
  Story(
      user: onlineUsers[0],
      imageURL: rentaruImageURL),
  Story(
      user: onlineUsers[5],
      imageURL: rentaruImageURL),
  Story(
      user: onlineUsers[1],
      imageURL: rentaruImageURL),
  Story(
      user: onlineUsers[4],
      imageURL: rentaruImageURL),
];

final List<Post> posts = [
  Post(
    user: onlineUsers[0],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[1],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[2],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[3],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[4],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
  Post(
    user: onlineUsers[5],
    caption: "check out my new boyfriend",
    timeAgo: "58m",
    imageURL: rentaruImageURL,
    likes: 1284,
    comments: 24,
    shares: 98,
  ),
];
