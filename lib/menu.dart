import 'package:carcare/body.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
