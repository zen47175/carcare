import 'package:carcare/body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.assignment_ind, size: 30),
          Icon(Icons.menu, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Topic(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Mr.Car'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: null,
          ),
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
