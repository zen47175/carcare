import 'package:carcare/detail/product_description.dart';
import 'package:carcare/detail/product_info.dart';
import 'package:carcare/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//product1
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
              product: product,
              lightText: lightText,
            ),
            Positioned(
              top: 375,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: 95,
              right: 5,
              child: Image.network(
                product.image,
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

//product2
class BodyProduct2 extends StatelessWidget {
  final Product product;
  const BodyProduct2({Key? key, required this.product}) : super(key: key);

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
            ProductInfo2(
              product: product2,
              lightText: lightText,
            ),
            Positioned(
              top: 375,
              left: 0,
              right: 0,
              child: ProductDescription2(
                product: product2,
                press: () {},
              ),
            ),
            Positioned(
              top: 95,
              right: 30,
              child: Image.network(
                product2.image,
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

//product3
class BodyProduct3 extends StatelessWidget {
  final Product product;
  const BodyProduct3({Key? key, required this.product}) : super(key: key);

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
            ProductInfo3(
              product: product3,
              lightText: lightText,
            ),
            Positioned(
              top: 375,
              left: 0,
              right: 0,
              child: ProductDescription3(
                product: product3,
                press: () {},
              ),
            ),
            Positioned(
              top: 95,
              right: 30,
              child: Image.network(
                product3.image,
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
