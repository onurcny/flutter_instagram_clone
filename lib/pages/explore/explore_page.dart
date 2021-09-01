import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/search/search_page.dart';
import 'package:instagram_flutter/widgets/post/post_small.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchBar(),
      ),
      body: ListView(
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBar(){
    return Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search, color: Colors.grey.shade300),
              SizedBox(width: 10),
              Text('Search', style: TextStyle(fontSize: 16, color: Colors.grey.shade700)),
            ],
          ),
        ),
      ),
    );
  }
}