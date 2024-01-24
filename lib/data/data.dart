import 'package:flutter_facebook_clone/models/models.dart';

final User currentUser = User(
  name: "Sothea Mab",
  imageUrl: "assets/images/img1 (7).jpg",
);

final List<User> onlineUser = [
  User(
    name: "Reak Smey",
    imageUrl: "assets/images/img1 (1).jpg",
  ),
  User(
    name: "Tun Tun",
    imageUrl: "assets/images/img1 (2).jpg",
  ),
  User(
    name: "Putny",
    imageUrl: "assets/images/img1 (3).jpg",
  ),
  User(
      name: "Vireak",
      imageUrl:
          "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc"),
  User(
      name: "Meng SD",
      imageUrl:
          "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc"),
  User(
      name: "Meng Chan",
      imageUrl:
          "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc"),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: "I love SD",
    timeAgo: "30m",
    imageUrl:
        "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
    likes: 200,
    comments: 129,
    shares: 12,
  ),
  Post(
    user: onlineUser[0],
    caption: "Roem Reaksmey",
    timeAgo: "20m",
    imageUrl:
        "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
    likes: 12,
    comments: 12,
    shares: 12,
  ),
  Post(
    user: onlineUser[0],
    caption: "Tun Tun",
    timeAgo: "90m",
    imageUrl:
        "https://imgs.search.brave.com/gRI3OuaZNieVIbB-FkbZF3Cg1Zy03WQsIREj_i0NwXQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aXN0b2NrcGhvdG8u/Y29tL3Jlc291cmNl/cy9pbWFnZXMvUGhv/dG9GVExQL0pvYnND/YXJlZXJzLTkwMTU2/ODY2MC5qcGc",
    likes: 56,
    comments: 56,
    shares: 56,
  ),
];
