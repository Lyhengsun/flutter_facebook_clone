import 'package:flutter_facebook_clone/models/friend_request_model.dart';
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
    imageURL:
        "https://static.wikia.nocookie.net/100kanojo/images/0/0a/HakariAnimeInfobox.png/revision/latest?cb=20240118051455",
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

String rentaruImageURL =
    "https://static.wikia.nocookie.net/100kanojo/images/e/e2/RentarouAnimeInfobox.png/revision/latest?cb=20240118045820";
String blankImageURL =
    "https://img.freepik.com/free-photo/abstract-surface-textures-white-concrete-stone-wall_74190-8189.jpg";

final List<Story> stories = [
  Story(user: onlineUsers[2], imageURL: rentaruImageURL),
  Story(user: onlineUsers[3], imageURL: rentaruImageURL),
  Story(user: onlineUsers[0], imageURL: rentaruImageURL),
  Story(user: onlineUsers[5], imageURL: rentaruImageURL),
  Story(user: onlineUsers[1], imageURL: rentaruImageURL),
  Story(user: onlineUsers[4], imageURL: rentaruImageURL),
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

List<FriendRequest> friendRequests = [
  FriendRequest(
      user: User(
        name: "Haraga Kurumi",
        imageURL:
            "https://static.wikia.nocookie.net/100kanojo/images/d/db/HeadshotKurumi.png/revision/latest?cb=20230917140656",
      ),
      mutualFriendsAmount: 6,
      requestDuration: Duration(days: 7)),
  FriendRequest(
    user: User(
      name: "Meido Mei",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/9/93/Meido_Mei.jpg/revision/latest?cb=20240115181143",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 6),
  ),
  FriendRequest(
    user: User(
      name: "Sutou Iku",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/7/78/HeadshotIku.png/revision/latest?cb=20230917140846",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 8),
  ),
  FriendRequest(
    user: User(
      name: "Utsukushisugi Mimimi",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/3/3e/HeadshotMimimi.png/revision/latest?cb=20230917140922",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 7),
  ),
  FriendRequest(
    user: User(
      name: "Kakure Meme",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/7/72/HeadshotMeme.png/revision/latest?cb=20230917143335",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 10),
  ),
  FriendRequest(
    user: User(
      name: "Iin Chiyo",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/5/54/HeadshotChiyo.png/revision/latest?cb=20230917143408",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 14),
  ),
  FriendRequest(
    user: User(
      name: "Yamato Nadeshiko",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/a/a0/HeadshotNaddy.png/revision/latest?cb=20230917143442",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 15),
  ),
  FriendRequest(
    user: User(
      name: "Yasashiki Yamame",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/b/b7/HeadshotYamame.png/revision/latest?cb=20230917143519",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 9),
  ),
  FriendRequest(
    user: User(
      name: "Momi Momiji",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/6/6b/HeadshotMomiji.png/revision/latest?cb=20230917143554",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 14),
  ),
  FriendRequest(
    user: User(
      name: "Yakuzen Yaku",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/9/96/HeadshotYaku.png/revision/latest?cb=20230917143641",
    ),
    mutualFriendsAmount: 6,
    requestDuration: Duration(days: 31),
  ),
];

List<FriendRequest> friendSuggestions = [
  FriendRequest(
    user: User(
      name: "Torotoro Kishika",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/9/9a/HeadshotKishika.png/revision/latest?cb=20230917143822",
    ),
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: User(
      name: "Kedarui Aashii",
      imageURL:
          "https://static.wikia.nocookie.net/100kanojo/images/b/b2/HeadshotAhko.png/revision/latest?cb=20230917143901",
    ),
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: User(
        name: "Nakaji Uto",
        imageURL:
            "https://static.wikia.nocookie.net/100kanojo/images/e/ef/HeadshotUto.png/revision/latest?cb=20230917143941"),
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: User(
        name: "Meido Mai",
        imageURL:
            "https://static.wikia.nocookie.net/100kanojo/images/4/4f/HeadshotMai.png/revision/latest?cb=20230917144016"),
    mutualFriendsAmount: 6,
  ),
  FriendRequest(
    user: User(
        name: "Bonnouji Momoha",
        imageURL:
            "https://static.wikia.nocookie.net/100kanojo/images/9/9c/BonnoujiMomoha.png/revision/latest?cb=20240103155122"),
    mutualFriendsAmount: 6,
  ),
];
