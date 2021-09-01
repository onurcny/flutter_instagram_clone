import 'package:flutter/material.dart';

class PostContent extends StatefulWidget {
  const PostContent({ Key? key }) : super(key: key);

  @override
  _PostContentState createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.deepPurpleAccent,
    );
  }
}