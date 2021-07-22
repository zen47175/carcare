import 'package:carcare/body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

int _page = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.new_releases, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.assignment_ind, size: 30),
          Icon(Icons.menu, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _page == 2
          ? Topic()
          : Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                    )
                  ],
                ))
              ],
            ),
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
