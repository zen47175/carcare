import 'dart:ui';

import 'package:carcare/categoryType.dart';
import 'package:carcare/detail/detailproduct.dart';
import 'package:carcare/models/categories.dart';
import 'package:carcare/product_card.dart';
import 'package:carcare/servive/Acessories_class.dart';

import 'package:flutter/material.dart';

class Topic extends StatefulWidget {
  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  int groupId = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return Container(
                  height: 290,
                  width: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              groupId = snapshot.data![index].id;
                            });
                          },
                          child: CategoryType(category: snapshot.data![index]));
                    },
                  ),
                );
              } else
                return Center(
                  child: Text('error'),
                );
            },
          ),
          Divider(height: 5),
          //product
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              groupId == 0
                  ? "All Accessory"
                  : groupId == 1
                      ? "Charger"
                      : "Camera",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          FutureBuilder(
            future: query(groupId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 20,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.63),
                      itemBuilder: (context, index) {
                        return AllProduct(
                          product: snapshot.data[index],
                          press: () {
                            goTo(context,
                                DetailProduct(product: snapshot.data[index]));
                          },
                        );
                      }),
                );
              } else {
                return Center(child: Image.asset('assets/tenor.gif'));
              }
            },
          ),
        ],
      ),
    );
  }
}
