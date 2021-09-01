import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/profile/profile_info.dart';
import 'package:instagram_flutter/pages/profile/profile_posts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('username'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Column(
        children: [
          ProfileInfo(),
          ProfilePosts(),
        ],
      ),
    );
  }
}