import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/story/story_item.dart';

class MainStories extends StatefulWidget {
  const MainStories({ Key? key }) : super(key: key);

  @override
  _MainStoriesState createState() => _MainStoriesState();
}

class _MainStoriesState extends State<MainStories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryItem(),
          StoryItem(),
          StoryItem(),
          StoryItem(),
          StoryItem(),
          StoryItem(),
        ],
      ),
    );
  }
}