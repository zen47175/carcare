import 'package:carcare/servive/Acessories_class.dart';
import 'package:flutter/material.dart';

//productinfo1
class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.lightText,
    required this.product,
  }) : super(key: key);

  final TextStyle lightText;
  final Product product;

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
            product.name,
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
            ("฿ ${product.price.toString()}"),
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
