import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/messenger/messenger_page.dart';
import 'package:instagram_flutter/pages/share/share_page.dart';
import 'package:instagram_flutter/widgets/post/post.dart';
import 'package:instagram_flutter/widgets/story/main_stories.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SharePage()));
            }, 
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MessengerPage()));
          }, icon: Icon(Icons.message_outlined)),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          MainStories(),
          Divider(height: 1, color: Colors.grey),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}