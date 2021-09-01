import 'package:flutter/material.dart';

class PostSmall extends StatefulWidget {
  const PostSmall({ Key? key }) : super(key: key);

  @override
  _PostSmallState createState() => _PostSmallState();
}

class _PostSmallState extends State<PostSmall> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 3,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}