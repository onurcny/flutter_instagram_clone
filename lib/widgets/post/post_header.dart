import 'package:flutter/material.dart';

class PostHeader extends StatefulWidget {
  const PostHeader({ Key? key }) : super(key: key);

  @override
  _PostHeaderState createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
          ),
          SizedBox(width: 10),
          Text('username', style: TextStyle(color: Colors.white)),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white)),
        ],
      ),
    );
  }
}