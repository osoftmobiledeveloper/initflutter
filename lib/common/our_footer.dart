import 'package:flutter/material.dart';

import 'foundations/colors.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;

  OurFooter(
      {this.iconRight = const Icon(Icons.add),
      this.iconLeft = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: BottomNavigationBar(
        backgroundColor: SCALE_04,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: this.iconLeft,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: this.iconRight,
            title: Text('School'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.lightBlue, //BRAND_PRIMARY,
        unselectedItemColor: BRAND_SECONDARY,
        iconSize: 30.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          print("hola");
        },
      ),
    );
  }
}
