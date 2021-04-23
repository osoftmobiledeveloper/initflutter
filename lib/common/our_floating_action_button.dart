import 'package:flutter/material.dart';
import 'package:wiki_app/domain/model/item.dart';

class OurFloatingActionButton extends StatefulWidget {
  /*final int id;
  final String pathImage;*/
  final Item item;
  OurFloatingActionButton(this.item /*this.id, this.pathImage*/);

  @override
  _OurFloatingActionButtonState createState() =>
      _OurFloatingActionButtonState();
}

class _OurFloatingActionButtonState extends State<OurFloatingActionButton> {
  bool liked = false;

  onPressed() {
    setState(() {
      this.liked = !this.liked;

      Navigator.push(context, CustomPageRoute(SecondScreen(this.widget.item)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'unq2',
      mini: true,
      backgroundColor: Colors.blue,
      //child: this.liked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      child: Icon(Icons.search),
      onPressed: onPressed,
      materialTapTargetSize: MaterialTapTargetSize.padded,
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Item item;
  SecondScreen(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: "HeroOne",
            child: Image.network(this.item.image,
                width: 180, height: 250, fit: BoxFit.fill),
          ),
          ElevatedButton(
            child: Text('Back'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(seconds: 2);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
