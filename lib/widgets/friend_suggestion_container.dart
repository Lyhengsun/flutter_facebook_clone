import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

import 'package:flutter_facebook_clone/data/data.dart';

// class FriendSuggestionContainer extends StatelessWidget {
//   final FriendRequest friendSuggestion;

//   const FriendSuggestionContainer({super.key, required this.friendSuggestion});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
//       color: Colors.white,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ProfileAvatar(
//             imageUrl: friendSuggestion.user.imageURL,
//             size: 85,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Container(
//               height: 88,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildFriendRequestHeaderWidget(),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   _buildMutualFriendsWidget(),
//                   Spacer(),
//                   _buildFriendReqButtons(),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildFriendRequestHeaderWidget() {
//     return Container(
//       child: Row(
//         children: [
//           Container(
//             child: Text(
//               friendSuggestion.user.name,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 height: 0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMutualFriendsWidget() {
//     return Row(
//       children: [
//         Container(
//           color: Colors.white,
//           width: 42,
//           height: 24,
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 18,
//                 child: Container(
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(width: 2, color: Colors.white)),
//                   child: ProfileAvatar(
//                     imageUrl: onlineUsers[1].imageURL,
//                     size: 20,
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(width: 2, color: Colors.white)),
//                 child: ProfileAvatar(
//                   imageUrl: onlineUsers[0].imageURL,
//                   size: 20,
//                 ),
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           width: 2,
//         ),
//         Text(
//           "${friendSuggestion.mutualFriendsAmount} mutual friends",
//           style: TextStyle(
//             fontSize: 12,
//             color: Colors.black54,
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildFriendReqButtons() {
//     return Row(
//       children: [
//         _FriendReqButton(
//           label: "Add friend",
//           backgroundColor: Palette.facebookBlue,
//           foregroundColor: Colors.white,
//           onTap: () {},
//         ),
//         SizedBox(
//           width: 4,
//         ),
//         _FriendReqButton(
//           label: "Remove",
//           backgroundColor: Colors.grey.shade300,
//           foregroundColor: Colors.black,
//           onTap: () {},
//         ),
//       ],
//     );
//   }
// }

// class _FriendReqButton extends StatelessWidget {
//   final String label;
//   final Color backgroundColor;
//   final Color foregroundColor;
//   final VoidCallback onTap;

//   const _FriendReqButton({
//     super.key,
//     required,
//     required this.label,
//     required this.backgroundColor,
//     required this.foregroundColor,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           padding: EdgeInsets.all(6),
//           decoration: BoxDecoration(
//             color: backgroundColor,
//             borderRadius: BorderRadius.all(Radius.circular(5)),
//           ),
//           child: Text(
//             "Add ",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: foregroundColor,
//               fontWeight: FontWeight.w500,
//               fontSize: 12,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class FriendSuggestionContainer extends FriendRequestContainer {
  const FriendSuggestionContainer({super.key, required super.friendRequest});

  @override
  Widget buildFriendRequestHeaderWidget() {
      return Container(
      child: Row(
        children: [
          Container(
            child: Text(
              friendRequest.user.name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Widget buildFriendReqButtons() {
    return Row(
      children: [
        FriendReqButton(
          label: "Add friend",
          backgroundColor: Palette.facebookBlue,
          foregroundColor: Colors.white,
          onTap: () {},
        ),
        SizedBox(
          width: 4,
        ),
        FriendReqButton(
          label: "Remove",
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.black,
          onTap: () {},
        ),
      ],
    );
  }
}
