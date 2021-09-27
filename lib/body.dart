import 'package:carcare/detail/detailproduct.dart';
import 'package:carcare/models/categories.dart';
import 'package:carcare/product_card.dart';
import 'package:carcare/servive/Acessories_class.dart';

import 'package:flutter/material.dart';

import 'categoryType.dart';

class Topic extends StatefulWidget {
  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryType(
                  category: category,
                ),
                CategoryType(
                  category: category,
                ),
                CategoryType2(
                  category: category,
                ),
              ],
            ),
          ),
          Divider(height: 5),
          //product
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'All product',
            ),
          ),
          FutureBuilder(
            future: getAll(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
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
