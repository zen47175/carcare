// ignore: unused_import
//import 'dart:js';
import 'dart:convert';

import 'package:carcare/AllCustomerdetail/Customerdetail.dart';
import 'package:carcare/AllHomePage/Homepagelist.dart';
import 'package:carcare/AllMenu/SettingMenu.dart';
//import 'package:carcare/Allnew/newbody.dart';
import 'package:carcare/Favourite%20product/favouritePage.dart';
import 'package:carcare/Favourite%20product/seachfilter.dart';
import 'package:carcare/Favourite%20product/tabbar.dart';
import 'package:carcare/body.dart';
import 'package:carcare/models/Acessories_class.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Allcar/car_page.dart';
import 'cart.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  _MenuState();
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // final _pageOption = [
  //   Homepage(),
  //   CarPage(),
  //   Topic(),
  //   //MapZenHome(m: context),
  //   CustomerBody(),
  //   Setting(),
  // ];

  // pagerount   สำหรับ appbar
  @override
  Widget build(BuildContext context) {
      final _pageOption = [
    Homepage(),
    CarPage(),
    Topic(),
    //MapZenHome(m: context),
    MapZenHome(),
    //CustomerBody(),
    Setting(),
  ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.directions_car, size: 30),
          Icon(Icons.usb_sharp, size: 30), //electrical_services or usb_sharp or watch
          Icon(Icons.location_on, size: 30),
          //Icon(Icons.shopping_cart, size: 30), //or assistant_navigation or directions
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
        title: Text('Mr.Car',
        style: TextStyle(color: Colors.black),
        //style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 28,
              color: Colors.black,
            ),
            onPressed: () {
              goTo(context, CartPage());
            },
          ),
          IconButton(
            onPressed: () {
              goTo(context, SearchTabPage());
            },
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
