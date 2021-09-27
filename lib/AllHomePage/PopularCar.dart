import 'dart:ui';

import 'package:flutter/material.dart';

class PopularCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 150,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 170,
                child: Image.asset('assets/hondacivic2019.jpg'),
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
                          Text(
                            '2019 Honda CIVIC 1.8 EL',
                          ),
                          Text(
                            'โฉม MNC วิ่ง 31,xxx km. แท้ๆ สภาพใหม่เหมือนป้ายแดง ดาวน์ O%',
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'More Detail...',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .indigo[800]), //add geturdetector ทีหลัง
                            ), //add geturdetector ทีหลัง
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

//เเก้ build
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: carConnect.snapshots(),
//       // initialData: initialData,
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (!snapshot.hasData)
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         else
//           return ListView.builder(
//             itemExtent: 50,
//             itemCount: snapshot.data.documents.length,
//             itemBuilder: (BuildContext context, int index) {
//               return PopularCar(context, snapshot.data.documents[index]);
//             },
//           );
//       },
//     );
//   }
//}
// class PopularCar extends StatelessWidget {
//   const PopularCar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemExtent: 1,
//       itemCount: 1,
//       itemBuilder: (BuildContext context, int index) {
//         return SizedBox(
//           height: 150,
//           child: Stack(
//             alignment: Alignment.centerLeft,
//             children: <Widget>[
//               Container(
//                 height: 130,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       offset: Offset(0, 8),
//                       blurRadius: 24,
//                       color: Colors.grey.shade200,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 170,
//                 child: Image.network('carImg'),
//               ),
//               Positioned(
//                 left: 165,
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                   child: Container(
//                     height: 135,
//                     width: MediaQuery.of(context).size.width - 200,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Text(
//                           'Infor',
//                         ),
//                         Text(
//                           'title',
//                         ),
//                         Align(
//                           alignment: Alignment.topRight,
//                           child: Text(
//                             'More Detail...',
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.indigo[800],
//                             ), //add geturdetector ทีหลัง
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
