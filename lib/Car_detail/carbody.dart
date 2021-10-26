import 'package:carcare/detail/product_description.dart';
import 'package:carcare/detail/product_info.dart';

import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'car_description.dart';
import 'car_info.dart';

//Car
class BodyCars extends StatelessWidget {
  final Cars cars;
  final int index;
  const BodyCars({Key? key, required this.cars, required this.index}) : super(key: key);
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
            CarsInfo(
              lightText: lightText,
              cars: cars,
              index: index,
            ),
            Positioned(
              top: 310,
              left: 0,
              right: 0,
              child: CarsDescription(
                press: () {},
                cars: cars,
                index: index,

              ),
            ),
            Positioned(
              top: 60,
              right: 14,
              child: Image.network(
                cars.url,
                fit: BoxFit.contain,
                height: 420,
                width: 400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
