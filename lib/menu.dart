// ignore: unused_import
import 'package:carcare/AllCustomerdetail/Customerdetail.dart';
import 'package:carcare/AllHomePage/Homepagelist.dart';
import 'package:carcare/AllMenu/SettingMenu.dart';
import 'package:carcare/Allnew/newbody.dart';
import 'package:carcare/Favourite%20product/favouritePage.dart';
import 'package:carcare/body.dart';
import 'package:carcare/servive/Acessories_class.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  _MenuState();
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final _pageOption = [
    Homepage(),
    Newbody(),
    Topic(),
    CustomerBody(),
    Setting(),
  ];

  // pagerount   สำหรับ appbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.new_releases_rounded, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.assignment_ind, size: 30),
          Icon(Icons.menu, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.lightBlue[100],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _pageOption[_page],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Mr.Car'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 28,
              color: Colors.black,
            ),
            onPressed: () {
              goTo(context, Favourite());
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
