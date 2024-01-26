// import 'package:flutter/material.dart';
// import 'models/models.dart'; // Import your user and story models

// class StoriesList extends StatelessWidget {
//   final List<Story> stories;
//   final User currentUser;

//   StoriesList({
//     Key? key,
//     required this.stories,
//     required this.currentUser,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200.0, // Set the desired height for the story list
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal, // Make the list scroll horizontally
//         itemCount: stories.length + 1,
//         itemBuilder: (BuildContext context, int index) {
//           if (index == 0) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 4.0),
//               child: _StoryCard(
//                 isAddStory: true,
//                 currentUser: currentUser,
//               ),
//             );
//           }
//           final Story story = stories[index - 1];
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 4.0),
//             child: _StoryCard(
//               story: story,
//               currentUser: currentUser,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class _StoryCard extends StatelessWidget {
//   final bool isAddStory;
//   final User? currentUser;
//   final Story? story;

//   const _StoryCard({
//     Key? key,
//     this.isAddStory = false,
//     this.currentUser,
//     this.story,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 110.0, // Set the width of each story card
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8.0),
//             child: Image.asset(
//               isAddStory
//                   ? currentUser?.imageUrl ?? 'assets/images/img1(8).jpg'
//                   : story?.imageUrl ?? 'assets/images/img1(14).jpg',
//               height: double.infinity,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             bottom: 8.0,
//             left: 8.0,
//             child: CircleAvatar(
//               radius: 16.0,
//               backgroundImage: AssetImage(
//                 isAddStory
//                     ? currentUser?.profileImageUrl ?? 'assets/images/profile_placeholder.jpg'
//                     : story?.user?.profileImageUrl ?? 'assets/images/profile_placeholder.jpg',
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Facebook Story Clone'),
//         ),
//         body: StoriesList(
//           currentUser: User(id: '1', name: 'Your Name', profileImageUrl: 'assets/images/your_profile.jpg'),
//           stories: [
//             Story(
//               user: User(id: '2', name: 'Friend 1', profileImageUrl: 'assets/images/friend1_profile.jpg'),
//               imageUrl: 'assets/images/story1.jpg',
//             ),
//             // Add more stories here...
//           ],
//         ),
//       ),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String profileImageUrl;

//   User({
//     required this.id,
//     required this.name,
//     required this.profileImageUrl,
//   });
// }

// class Story {
//   final User user;
//   final String imageUrl;

//   Story({
//     required this.user,
//     required this.imageUrl,
//   });
// }
