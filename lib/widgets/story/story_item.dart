import 'package:flutter/material.dart';

class StoryItem extends StatefulWidget {
  const StoryItem({ Key? key }) : super(key: key);

  @override
  _StoryItemState createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 80,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.red, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipOval(
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Text('username', style: TextStyle(fontSize: 10, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}