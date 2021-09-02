import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  const SharePage({ Key? key }) : super(key: key);

  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close_outlined),
        ),
        title: Text('New Post'),
        actions: [IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_forward_outlined, color: Colors.blue,),
        ),
        ],
      ),
    );
  }
}