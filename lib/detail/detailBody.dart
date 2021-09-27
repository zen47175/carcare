import 'package:carcare/detail/product_description.dart';
import 'package:carcare/detail/product_info.dart';

import 'package:carcare/servive/Acessories_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//product
class BodyProduct extends StatelessWidget {
  final Product product;
  const BodyProduct({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextStyle lightText =
        TextStyle(color: Colors.blueGrey.withOpacity(0.8), fontSize: 15);
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: 900,
        child: Stack(
          children: <Widget>[
            ProductInfo(
              lightText: lightText,
              product: product,
            ),
            Positioned(
              top: 375,
              left: 0,
              right: 0,
              child: ProductDescription(
                press: () {},
                product: product,
              ),
            ),
            Positioned(
              top: 95,
              right: 5,
              child: Image.network(
                product.url,
                fit: BoxFit.cover,
                height: 220,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
