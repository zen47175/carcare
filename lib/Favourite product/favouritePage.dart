import 'dart:ui';

import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favourite extends StatelessWidget {
  const Favourite({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var store1 = Provider.of<StoreLanguage>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(
          'Favourite',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 26,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: Colors.grey.shade200,
                  )
                ]),
                // color: Colors.amber,
                height: 150,
                width: double.infinity,
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    'assets/accessories1.jpg',
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Positioned(
                left: 165,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    height: 135,
                    width: MediaQuery.of(context).size.width - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Camera',
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '1350 ฿',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .indigo[800]), //add geturdetector ทีหลัง
                          ), //add geturdetector ทีหลัง
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: ElevatedButton.icon(
                            label: Text('Add To Cart'),
                            icon: Icon(Icons.shopping_cart_outlined),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                shadowColor: Colors.grey[800]),
                            onPressed: () {
                              // store1.addProduct(store1.products[index]);
                              // Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
