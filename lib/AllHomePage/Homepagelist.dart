import 'dart:ui';

import 'package:carcare/AllHomePage/CarBrand.dart';
import 'package:carcare/AllHomePage/PopularCar.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  final pic1 = "assets/NewPicHomePage/new1.jpg";
  final pic2 = "assets/NewPicHomePage/new2.png";
  final pic3 = "assets/NewPicHomePage/new3.jpg";

  @override
  Widget build(BuildContext context) {
    var store1 = Provider.of<StoreLanguage>(context);
    List<String> list = [pic1, pic2, pic3]; // CHG  to list string to print pic
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 170,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: list
                  .map((item) => Container(
                        child: Center(
                          child: Image.asset(item.toString()),
                        ), //มารับ ค่า

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                      ))
                  .toList(),
            ),
          ),
        ),
        Divider(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              store1.h1.tr(),
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, height: 1),
            ),
          ),
        ),
        SizedBox(
          width: 500,
          height: 150,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  HondaLogo(),
                  BmLogo(),
                  BenzLogo(),
                  NissanLogo(),
                  ToyotaLogo(),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: Text(
              store1.h3.tr(),
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, height: 1),
            )),
          ),
        ),
        SizedBox(height: 10),
        PopularCar()
      ],
    );
  }
}
