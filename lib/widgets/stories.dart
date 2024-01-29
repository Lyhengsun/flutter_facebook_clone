import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/config/palette.dart';
import 'package:flutter_facebook_clone/models/models.dart';
import 'package:flutter_facebook_clone/widgets/widgets.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({super.key, required this.currentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.orange,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(currentUser: currentUser, isAddStory: true),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(
                story: story,
              ));
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final User? currentUser;
  final Story? story;
  final bool isAddStory;

  const _StoryCard(
      {super.key, this.currentUser, this.story, this.isAddStory = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser!.imageURL : story!.imageURL,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette.storyGradient,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          child: Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: isAddStory
                ? IconButton(
                    color: Palette.facebookBlue,
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  )
                : ProfileAvatar(
                    imageUrl: story!.user.imageURL,
                  ),
          ),
        ),
        Positioned(
          width: 110,
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              isAddStory ? "Add to Story" : story!.user.name,
              textAlign: isAddStory ? TextAlign.center : TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 15,
                height: 1.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
