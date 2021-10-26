import 'dart:convert';

import 'package:carcare/Car_detail/detailcar.dart';
import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:carcare/servive/local%20store.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;



Future<List<Cars>> getFilterNissan() async {
    //get data from datastore
    var result = await http.get(Uri.parse(cars_url));
    if (result.statusCode != 200) {
      return [];
    } else {
      var map1 = json.decode(result.body) as List;
      List<Cars> list1 = map1.map((x) => Cars.fromMap(x)).toList();
      //widget.firstRun = false;
      //remark99
      return list1
          .where((p) => p.name.toLowerCase().contains('nissan'.toLowerCase()))
          .toList();
    } //e else
    //remark99
  } //ef



class FilterNissan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Car Filter'),
      backgroundColor: Colors.grey[800],),
      body: FutureBuilder<List<Cars>>(
          //future data
          future: getFilterNissan(),
          //callback to display each item
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            //check snapshot is empty or not
            if (!snapshot.hasData) {
              return Center(
                //if empty show rotating circle
                child: CircularProgressIndicator(),
              );
            }
            //show the listview of data
            else {
              print(snapshot.data);
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  //crossAxisSpacing:20,
                  //mainAxisSpacing: 20,
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      //register click event
                      onTap: () {
                        goTo(context,
                                DetailCars(cars: snapshot.data[index],
                                index: index,));
                        // //open detail page
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => DetailPage(
                        //           product: snapshot.data![index],
                        //           index: index)),
                        //   //DetailPage(product: snapshot.data![index])
                        // );
                      },
                      child: Stack(
                        children: [
                          Hero(
                            tag: snapshot.data![index].id,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image:
                                      NetworkImage(snapshot.data![index].url),
                                ),
                              ),
                            ),
                          ),
                          //product name
                          Positioned(
                            bottom: 50,
                            left: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                //color: Colors.black87,
                                child: Text(
                                  snapshot.data![index].name,
                                  style: TitleItem,
                                ),
                              ),
                            ),
                          ),

                          
                          
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  } //ef
} //ec





