import 'dart:convert';

import 'package:carcare/Car_detail/detailcar.dart';
import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:carcare/servive/local%20store.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

Future<List<Cars>> getGroup1() async {
  //get data from datastore
  var result = await http.get(Uri.parse(cars_url));
  if (result.statusCode != 200) {
    return [];
  } else {
    var map1 = json.decode(result.body) as List;
    List<Cars> list1 = map1.map((x) => Cars.fromMap(x)).toList();
    return list1.where((element) => element.group.groupId == 1).toList();
  } //e else
} //ef

class CarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Cars>>(
          //future data
          future: getGroup1(),
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
                  //crossAxisSpacing: 20,
                  //mainAxisSpacing: 10,
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
                                  
                                  fit: BoxFit.none,
                                  image: 
                                      NetworkImage(snapshot.data![index].url),
                                ),
                              ),
                            ),
                          ),
                          //product name
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                // color: Colors.white,
                                child: Text(
                                  snapshot.data![index].name,
                                  style: TitleItem,
                                ),
                              ),
                            ),
                          ),

                          //icon
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                //color: Colors.black12,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.5),
                                  child:
                                      Icon(Icons.more, color: Colors.black87),
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


// class CarPage extends StatelessWidget {
//   const CarPage({Key? key, required this.cars, this.press})
//       : super(key: key);

//   final Cars cars;
//   final press;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: Container(
//         width: 10 * 14.5,
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: AspectRatio(
//           aspectRatio: 0.693,
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio: 1,
//                 child: Hero(
//                   //ไม่เด้ง
//                   //todo
//                   tag: cars.id,
//                   child: FadeInImage.assetNetwork(
//                     placeholder: "assets/tenor.gif",
//                     image: cars.url,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(cars.name),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text("฿ ${cars.price}"),
//               Spacer()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




