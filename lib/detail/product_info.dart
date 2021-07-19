import 'package:carcare/models/Products.dart';
import 'package:flutter/material.dart';

//productinfo1
class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.lightText,
    required Product product,
  }) : super(key: key);

  final TextStyle lightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 10 * 37.5,
      width: 10 * 15,
      // color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Aceessories'.toUpperCase(), style: lightText),
          SizedBox(
            height: 10,
          ),
          Text(
            'Charger',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.9,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'From',
            style: lightText,
          ),
          Text(
            '159 B',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
//productinfo2

class ProductInfo2 extends StatelessWidget {
  const ProductInfo2({
    Key? key,
    required this.lightText,
    required Product product,
  }) : super(key: key);

  final TextStyle lightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 10 * 37.5,
      width: 10 * 15,
      // color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Aceessories'.toUpperCase(), style: lightText),
          SizedBox(
            height: 10,
          ),
          Text(
            " ${product2.title} ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.9,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'From',
            style: lightText,
          ),
          Text(
            " ${product2.price} B",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

//product3
class ProductInfo3 extends StatelessWidget {
  const ProductInfo3({
    Key? key,
    required this.lightText,
    required Product product,
  }) : super(key: key);

  final TextStyle lightText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 10 * 37.5,
      width: 10 * 15,
      // color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Aceessories'.toUpperCase(), style: lightText),
          SizedBox(
            height: 10,
          ),
          Text(
            " ${product2.title} ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.9,
              height: 1.5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'From',
            style: lightText,
          ),
          Text(
            " ${product3.price} B",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
