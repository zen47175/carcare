import 'package:carcare/detail/detailBody.dart';

import 'package:carcare/servive/Acessories_class.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final Product product;

  const DetailProduct({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProduct(
        product: product,
      ),
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
