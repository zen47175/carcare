import 'dart:ui';

import 'package:carcare/AllHomePage/CarBrand.dart';
import 'package:carcare/AllHomePage/PopularCar.dart';
import 'package:carcare/Allcar/filterFord.dart';
import 'package:carcare/Allcar/filterHyundai.dart';
import 'package:carcare/Allcar/filterIsuzu.dart';
import 'package:carcare/Allcar/filterMazda.dart';
import 'package:carcare/Allcar/filterMitsu.dart';
import 'package:carcare/Allcar/filterNissan.dart';
import 'package:carcare/Allcar/filterSuzuki.dart';
import 'package:carcare/Allcar/filterToyota.dart';
import 'package:carcare/Favourite%20product/tabbar.dart';
import 'package:carcare/models/Acessories_class.dart';
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
              store1.h2.tr(),
              //home //todo
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, height: 1),
            ),
          ),
        ),
        //Car Brand
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FilterPage()),
                        //FilterPage
                      );
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //suzuki
                          'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/0ac25288-1d5a-4bd7-ba04-0d7b77e59d03'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterToyota());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //toyota
                          'https://assets.turbologo.com/blog/en/2021/07/07073303/toyota-oval.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterNissan());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //nissan
                          'https://www.logo-th.com/wp-content/uploads/2018/08/logo-NISSAN.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterMazda());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //mazda
                          'https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/fff43905f01200a393a6c1611666f603/large.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterMitsu());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //Mitsubishi
                          'https://wieck-mmna-production.s3.amazonaws.com/photos/d05f8e2530ea21931994bf23f5237e24afb0fff1/preview-928x522.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterHyundai());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //Hyundai
                          'https://leasingbrokernews.co.uk/wp-content/uploads/2016/11/Hyundai-Logo-SQUARE-200.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterFord());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //Ford
                          'https://www.logo-th.com/wp-content/uploads/2018/12/FORD.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      goTo(context, FilterIsuzu());
                    },
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(
                          //Isuzu
                          'https://fw.lnwfile.com/_/fw/_raw/6i/6h/jo.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    //     SizedBox(
    //       width: 500,
    //       height: 150,
    //       child: SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: Padding(
    //           padding: const EdgeInsets.only(
    //             left: 10,
    //           ),
    //           child: 
    //           Column(
    //   children: <Widget>[
        
    //     // Padding(
    //     //   padding: const EdgeInsets.only(left: 15, top: 20),
    //     //   child: Container(
    //     //     alignment: Alignment.topLeft,
    //     //     child: Text(
    //     //       'Car Brand',
    //     //       //store1.t1.tr(), //Car Brand
    //     //       style: TextStyle(
    //     //           fontSize: 25, fontWeight: FontWeight.bold, height: 1),
    //     //     ),
    //     //   ),
    //     // ),
    //     SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Padding(
    //         padding: const EdgeInsets.only(
    //           left: 10,
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           // children: <Widget>[
    //           //   SizedBox(height: 32),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //suzuki
    //           //             'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/0ac25288-1d5a-4bd7-ba04-0d7b77e59d03'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //toyota
    //           //             'https://assets.turbologo.com/blog/en/2021/07/07073303/toyota-oval.png'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //nissan
    //           //             'https://www.logo-th.com/wp-content/uploads/2018/08/logo-NISSAN.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //mazda
    //           //             'https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/fff43905f01200a393a6c1611666f603/large.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //Mitsubishi
    //           //             'https://wieck-mmna-production.s3.amazonaws.com/photos/d05f8e2530ea21931994bf23f5237e24afb0fff1/preview-928x522.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //Hyundai
    //           //             'https://leasingbrokernews.co.uk/wp-content/uploads/2016/11/Hyundai-Logo-SQUARE-200.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //Ford
    //           //             'https://www.logo-th.com/wp-content/uploads/2018/12/FORD.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           //   Padding(
    //           //     padding: const EdgeInsets.all(8.0),
    //           //     child: GestureDetector(
    //           //       onTap: () {
    //           //         // Navigator.push(
    //           //         //   context,
    //           //         //   MaterialPageRoute(builder: (context) => LoginPage()),
    //           //         // );
    //           //       },
    //           //       child: CircleAvatar(
    //           //         radius: 55.0,
    //           //         backgroundImage: NetworkImage(
    //           //             //Isuzu
    //           //             'https://fw.lnwfile.com/_/fw/_raw/6i/6h/jo.jpg'),
    //           //       ),
    //           //     ),
    //           //   ),
    //           // ],
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    //         ),
    //       ),
    //     ),
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
