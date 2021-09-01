import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/post/post_content.dart';
import 'package:instagram_flutter/widgets/post/post_footer.dart';
import 'package:instagram_flutter/widgets/post/post_header.dart';
import 'package:instagram_flutter/widgets/post/post_info.dart';

class Post extends StatefulWidget {
  const Post({ Key? key }) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(),
        PostContent(),
        PostFooter(),
        PostInfo(),
        SizedBox(height: 10,),
      ]
    );
  }
}