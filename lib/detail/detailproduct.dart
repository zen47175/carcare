import 'package:carcare/detail/detailBody.dart';

import 'package:carcare/models/Acessories_class.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final Product product;
  final int index;
  const DetailProduct({Key? key, required this.product,required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProduct(
        product: product,
        index: index,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
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
