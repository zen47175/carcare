import 'package:carcare/detail/detailBody.dart';
import 'package:carcare/models/Products.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final Product product;
  const DetailProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProduct(product: product),
      appBar: AppBar(
        title: Text('Product detail'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

//product2
class DetailProduct2 extends StatelessWidget {
  final Product product2;
  const DetailProduct2({Key? key, required this.product2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProduct2(product: product2),
      appBar: AppBar(
        title: Text('Product detail'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

//product3
class DetailProduct3 extends StatelessWidget {
  final Product product3;
  const DetailProduct3({Key? key, required this.product3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProduct3(product: product3),
      appBar: AppBar(
        title: Text('Product detail'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
