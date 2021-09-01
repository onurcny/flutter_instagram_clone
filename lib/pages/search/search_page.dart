import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _tabs = <Tab>[
    Tab(text: "Search",),
    Tab(text: "Accounts",),
    Tab(text: "Tags",),
    Tab(text: "Places",),
  ];
  final _tabPages = <Widget>[
    Center(child: Text("Başlıca", style: TextStyle(color: Colors.grey.shade300),),),
    Center(child: Text("Hesaplar"),),
    Center(child: Text("Etiketler"),),
    Center(child: Text("Yerler"),),
  ];
  final _tabHints = <String>["Search", "Search accounts", "Search tags", "Search places"];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: searchBar(),
          bottom: TabBar(
            tabs: _tabs,
            onTap: (index){
              setState(() {
                _index = index;
              });
            },
          ),
        ),
        body: TabBarView(children: _tabPages,),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.grey.shade600,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            hintText: _tabHints[_index],
            hintStyle: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ),
    );
  }
}