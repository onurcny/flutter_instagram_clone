import 'package:flutter/material.dart';
import 'package:instagram_flutter/widgets/post/post_small.dart';

class ProfilePosts extends StatefulWidget {
  const ProfilePosts({ Key? key }) : super(key: key);

  @override
  _ProfilePostsState createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Container(
          height: 100,
          color: Colors.purple,
          child: TabBarView(
            controller: _controller,
            children: [
              Center(),
              Center(),
            ],
          ),
        ),
      ],
    );
  }
}