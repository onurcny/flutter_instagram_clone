import 'package:flutter/material.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({ Key? key }) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
    );
  }
}