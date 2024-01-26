import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.purple,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 8.0,
        ),
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: _StoryCard(
                isAddStory: true,
                currentUser: currentUser,
              ),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            child: _StoryCard(
              story: story,
              currentUser: currentUser,
            ),
          );
        },
      ),
    );
  }
}


class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;

  const _StoryCard({
    Key? key,
    this.isAddStory = false,
    this.currentUser,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          isAddStory
              ? currentUser?.imageUrl ?? 'assets/images/img1(8).jpg'
              : story?.imageUrl ?? 'assets/images/img1(14).jpg',
          // height: double.infinity,
          // width: 10.0,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
