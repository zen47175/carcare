import 'dart:async';

import 'package:carcare/Car_detail/detailcar.dart';
import 'package:carcare/detail/detailproduct.dart';
import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Cars>> SearchCar() async {
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
          .where((p) => p.name.toLowerCase().contains(searchTxt.toLowerCase()))
          .toList();
    } //e else
  } //ef

  Future<List<Product>> SearchAcc() async {
    //get data from datastore
    var result = await http.get(Uri.parse(products_url));
    if (result.statusCode != 200) {
      return [];
    } else {
      var map1 = json.decode(result.body) as List;
      List<Product> list1 = map1.map((x) => Product.fromMap(x)).toList();
      //widget.firstRun = false;
      //remark99
      return list1
          .where((p) => p.name.toLowerCase().contains(searchTxt.toLowerCase()))
          .toList();
    } //e else
  } //ef


String searchTxt = "";

class SearchTabPage extends StatefulWidget {
  @override
  State<SearchTabPage> createState() => _SearchTabPageState();
}

class _SearchTabPageState extends State<SearchTabPage> {
  int selectedTab = 0;

  //List<Widget> tabs = [Tab1(), Tab2(),];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Search Page"),
          backgroundColor: Colors.grey[800],
          bottom: TabBar(
            isScrollable: true,
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10), // Creates border
            //     color: Colors.black),
            //indicatorSize: TabBarIndicatorSize.label, //size
            indicatorWeight: 5, //tab height
            indicatorColor: Colors.yellow[500],
            labelColor: Colors.grey[300],
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: "           Car           ",
              ),
              Tab(
                icon: Icon(Icons.usb_sharp),
                text: "      Accessory      ",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Car
            Scaffold(
              body: FutureBuilder<List<Cars>>(
        //future data
        future: SearchCar(),
        //widget.firstRun ? getSearch() : null, //remark99

        //call data to display each item
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //if empty show rotating circle
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } //e if
          else {
            //print(snapshot.data);
            return GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                } //e if
              },
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        //search text field
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (text) {
                                setState(() {
                                  searchTxt = text.toLowerCase();
                                });
                              },
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: "Search",
                                contentPadding: EdgeInsets.only(
                                    left: 14, bottom: 12, top: 0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              Cars c = snapshot.data![index];
                              return InkWell(
                                onTap: () {
                                  goTo(context,
                                DetailCars(cars: snapshot.data[index],
                                index: index,));
                                }, //e ontap
                                child: Stack(
                                  children: [
                                    //product picture
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(c.url),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    //name of product
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        color: Colors.white54,
                                        child: Text(c.name, style: TextItem),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } //e else
        },
      ),
            ),
            // Center(
            //   child: Text("Tab1111111"),
            // ),
            // Center(
            //   child: Text("Tab22222"),
            // ),
            //Acc
            Scaffold(
              body: FutureBuilder<List<Product>>(
        //future data
        future: SearchAcc(),
        //widget.firstRun ? getSearch() : null, //remark99

        //call data to display each item
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //if empty show rotating circle
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } //e if
          else {
            //print(snapshot.data);
            return GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                } //e if
              },
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        //search text field
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (text) {
                                setState(() {
                                  searchTxt = text.toLowerCase();
                                });
                              },
                              autofocus: false,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                hintText: "Search",
                                contentPadding: EdgeInsets.only(
                                    left: 14, bottom: 12, top: 0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              Product p = snapshot.data![index];
                              return InkWell(
                                onTap: () {
                                  goTo(context,
                                DetailProduct(product: snapshot.data[index],
                                index: index,));
                                }, //e ontap
                                child: Stack(
                                  children: [
                                    //product picture
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(p.url),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    //name of product
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      child: Container(
                                        margin: EdgeInsets.all(6),
                                        color: Colors.white54,
                                        child: Text(p.name, style: AccItem),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } //e else
        },
      ),
            ),
          ],
        ),
      ),
    );
  } } //ec



// class Tab1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('');
//   } //ef
// } //ec

// class Tab2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('');
//   } //ef
// } //ec