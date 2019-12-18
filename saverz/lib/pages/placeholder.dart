import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
 final Color color;
 final String title;

 PlaceholderWidget(this.color, this.title);

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        title
      ),
    ),
    backgroundColor: color,
    body: Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    )
  );
 }
}