import 'package:carcare/models/Acessories_class.dart';
import 'package:flutter/material.dart';
import 'package:carcare/models/cars_class.dart';

//productinfo1
class CarsInfo extends StatelessWidget {
  const CarsInfo({
    Key? key,
    required this.lightText,
    required this.cars,
    required this.index,
  }) : super(key: key);

  final TextStyle lightText;
  final Cars cars;
  final int index;

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
          Text(cars.name.toUpperCase(),
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.9,
              height: 1.5,
            ),),
          SizedBox(
            height: 10,
          ),
          // Text(
          //   cars.name,
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: -0.9,
          //     height: 1.5,
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   'From',
          //   style: lightText,
          // ),
          //  Text(
          //     ("฿ ${cars.price.toString()}"),
          //     style: TextStyle(
          //         fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
          //   ),
          SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
