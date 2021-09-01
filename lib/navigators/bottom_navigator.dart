import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/explore/explore_page.dart';
import 'package:instagram_flutter/pages/main/main_page.dart';
import 'package:instagram_flutter/pages/profile/profile_page.dart';
import 'package:instagram_flutter/pages/reels/reels_page.dart';
import 'package:instagram_flutter/pages/shop/shop_page.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({ Key? key }) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _index = 0;

  final _pages = <Widget>[
    MainPage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.movie)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}