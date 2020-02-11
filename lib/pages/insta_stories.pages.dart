import 'dart:html';

import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
     new Row(
       children: <Widget>[
         new Icon(Icons.play_arrow),
         new Text(
           "Watch All", 
           style: TextStyle(
             fontWeight: FontWeight.bold),
          ),
       ],
     )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          //stories,
        ],
      ),
    );
  }
}