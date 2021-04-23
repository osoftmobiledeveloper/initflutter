import 'package:flutter/material.dart';
import 'package:wiki_app/domain/model/item.dart';

class OurElementDetail extends StatefulWidget {
  final Item itemDetail;
  OurElementDetail(this.itemDetail);

  @override
  _OurElementDetailState createState() => _OurElementDetailState();
}

class _OurElementDetailState extends State<OurElementDetail> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.widget.itemDetail.title),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 180,
                  padding: EdgeInsets.fromLTRB(21, 20, 22, 20),
                  child: Hero(
                    tag: this.widget.itemDetail.id,
                    child: Image.network(this.widget.itemDetail.image,
                        width: 150, height: 250, fit: BoxFit.fill),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(21, 20, 22, 20),
                child: Text(
                  this.widget.itemDetail.description,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 28),
                ),
              ),
            ],
          ),
        ));
  }
}
