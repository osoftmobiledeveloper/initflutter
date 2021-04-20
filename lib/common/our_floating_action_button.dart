import 'package:flutter/material.dart';

class OurFloatingActionButton extends StatefulWidget {
  @override
  _OurFloatingActionButtonState createState() =>
      _OurFloatingActionButtonState();
}

class _OurFloatingActionButtonState extends State<OurFloatingActionButton> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      mini: true,
      backgroundColor: Colors.blue,
      child: this.liked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      onPressed: null,
    );
  }
}
