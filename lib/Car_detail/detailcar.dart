import 'package:carcare/detail/detailBody.dart';

import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:flutter/material.dart';

import 'carbody.dart';

class DetailCars extends StatelessWidget {
  final Cars cars;
  final int index;
  const DetailCars({Key? key, required this.cars,required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyCars(
        cars: cars,
        index: index,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Car detail'),
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
