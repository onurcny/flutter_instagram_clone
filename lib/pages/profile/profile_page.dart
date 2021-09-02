import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/profile/profile_info.dart';
import 'package:instagram_flutter/pages/profile/profile_posts.dart';
import 'package:instagram_flutter/pages/share/share_page.dart';
import 'package:instagram_flutter/widgets/post/post_small.dart';
import 'package:instagram_flutter/widgets/story/main_stories.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin{
  late TabController _controller;
  bool _stories = false;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('username'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SharePage()));
            }, 
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                _stories = !_stories;
              });
            }, 
            icon: Icon(Icons.menu)
          ),
        ],
      ),
      body: Column(
        children: [
          ProfileInfo(),
          _stories?MainStories():Container(),
          TabBar(
            controller: _controller,
            tabs: [
              Tab(
                icon: const Icon(Icons.grid_on),
              ),
              Tab(
                icon: const Icon(Icons.assignment_ind_outlined),
              ),
            ],
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.constrainWidth(),
                  child: TabBarView(
                    controller: _controller,
                    children: [
                      ProfilePosts(),
                      ProfilePosts(),
                    ],
                  ),
                );
              } 
            ),
          ),
          // Expanded(
          //   key: _expandedKey,
          //   child: Container(
          //     height: _expandedKey.currentContext?.size?.height??100,
          //     child: TabBarView(
          //       controller: _controller,
          //       children: [
          //         ProfilePosts(),
          //         Center(child: PostSmall()),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}