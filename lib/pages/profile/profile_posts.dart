import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/post/post_small.dart';

class ProfilePosts extends StatefulWidget {
  const ProfilePosts({ Key? key }) : super(key: key);

  @override
  _ProfilePostsState createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts>{

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            children: [
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
              PostSmall(),
            ],
          ),
        ),
      ],
    );
  }
}