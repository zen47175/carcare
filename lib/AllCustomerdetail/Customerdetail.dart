// // ignore: unused_import
// import 'package:carcare/style.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:firebase_database/firebase_database.dart';

// // class CustomerBody extends StatefulWidget {
// //   const CustomerBody({Key? key}) : super(key: key);

// //   @override
// //   _CustomerBodyState createState() => _CustomerBodyState();
// // }

// // class _CustomerBodyState extends State<CustomerBody> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return PopularCar()
// //   }
// // }

// class CustomerBody extends StatelessWidget {
//   final CollectionReference carConnect =
//       FirebaseFirestore.instance.collection('Car');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection("Car").snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: Text(
//                 'test12',
//                 style: TextStyle(fontSize: 60),
//               ),
//             );
//           } else {
//             return ListView(
//               children: snapshot.data!.docs.map((document) {
//                 return Container(
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       radius: 30,
//                       child: FittedBox(
//                         child: Text(document['Infor']),
//                       ),
//                     ),
//                     title: Text(document['Infor'] + document['Infor']),
//                     subtitle: Text(document['title']),
//                   ),
//                 );
//               }).toList(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
