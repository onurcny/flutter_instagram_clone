import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/comments/comments_page.dart';

class PostInfo extends StatefulWidget {
  const PostInfo({ Key? key }) : super(key: key);

  @override
  _PostInfoState createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(children: [Text('Açıklamalar falan fistan', style: TextStyle(color: Colors.white))]),
          SizedBox(height: 3),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CommentsPage()));
            },
            child: Row(children: [Text('4 yorumun tümün gör', style: TextStyle(color: Colors.grey))])
          ),
        ],
      ),
    );
  }
}