import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/comments/comments_page.dart';

class PostFooter extends StatefulWidget {
  const PostFooter({ Key? key }) : super(key: key);

  @override
  _PostFooterState createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline, color: Colors.white)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CommentsPage()));
            }, icon: Icon(Icons.comment_outlined, color: Colors.white)),
            IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined, color: Colors.white)),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined, color: Colors.white)),
        ],
    );
  }
}