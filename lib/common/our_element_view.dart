import 'package:flutter/material.dart';
import 'package:wiki_app/common/our_element_detail.dart';
import 'package:wiki_app/common/our_floating_action_button.dart';
import 'package:wiki_app/domain/model/item.dart';

class OurElementView extends StatelessWidget {
  final Item item;
  final Axis orientation;
  /*final int id;
  final String pathImage;
  final String title;
  final String description;
  final Axis orientation;*/
  OurElementView(this.item, this.orientation
      /*this.id, this.pathImage, this.title, this.description, this.orientation*/);

  @override
  Widget build(BuildContext context) {
    final element = Stack(
        alignment:
            Alignment(this.orientation == Axis.horizontal ? 1.2 : 1.5, 1.7),
        children: [
          Row(children: <Widget>[
            /*Hero(
              tag: id,
              child: Image.network(this.pathImage,
                  width: 250, height: 250, fit: BoxFit.fill),
            ),*/
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 1200),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return OurElementDetail(this.item);
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return Align(
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                    ),
                  );
                },

                /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OurElementDetail(this.item)));
                },*/
                child: Container(
                    height: 120,
                    width: this.orientation == Axis.horizontal ? 70 : 140,
                    child: Hero(
                      tag: item.id,
                      transitionOnUserGestures: true,
                      child: Image.network(this.item.image,
                          width: 150, height: 150, fit: BoxFit.fill),
                    ))),
            Column(
              children: [
                Center(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(21, 20, 22, 10),
                  child: Text(
                    this.item.title,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Container(
                  padding: EdgeInsets.fromLTRB(21, 5, 22, 8),
                  child: Text(
                    this.item.description,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ],
            )
          ]),
          OurFloatingActionButton(this.item /*1, this.pathImage*/),
        ]);
    return element;
  }
}
