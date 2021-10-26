import 'package:carcare/Allcar/filterSuzuki.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class HondaLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15),
//       child: Container(
//         height: 90,
//         width: 90,
//         foregroundDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/carLOGO/hondaLogo.png',
//               ),
//               fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }

// class ToyotaLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15),
//       child: Container(
//         height: 90,
//         width: 90,
//         foregroundDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/toyotalogo.png',
//               ),
//               fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }

// class BmLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15),
//       child: Container(
//         height: 90,
//         width: 90,
//         foregroundDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/carLOGO/bmwLogo.png',
//               ),
//               fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }

// class BenzLogo extends StatelessWidget {
//   const BenzLogo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15),
//       child: Container(
//         height: 90,
//         width: 90,
//         foregroundDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/carLOGO/mercedes-benz-logo.jpg',
//               ),
//               fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }

// class NissanLogo extends StatelessWidget {
//   const NissanLogo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15),
//       child: Container(
//         height: 90,
//         width: 90,
//         foregroundDecoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Colors.white,
//           image: DecorationImage(
//               image: AssetImage(
//                 'assets/nissanLogo.png',
//               ),
//               fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }



// class CarBrand extends StatelessWidget {
//   var store1;
//   @override
//   Widget build(BuildContext context) {
//     var store1 = Provider.of<StoreLanguage>(context);
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.only(left: 15, top: 20),
//           child: Container(
//             alignment: Alignment.topLeft,
//             child: Text(
//               'Car Brand',
//               //store1.t1.tr(), //Car Brand
//               style: TextStyle(
//                   fontSize: 25, fontWeight: FontWeight.bold, height: 1),
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 10,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 SizedBox(height: 32),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       print('hello');
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => FilterPage()),
//                       );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //suzuki
//                           'https://3dwarehouse.sketchup.com/warehouse/v1.0/publiccontent/0ac25288-1d5a-4bd7-ba04-0d7b77e59d03'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => FilterPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //toyota
//                           'https://assets.turbologo.com/blog/en/2021/07/07073303/toyota-oval.png'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //nissan
//                           'https://www.logo-th.com/wp-content/uploads/2018/08/logo-NISSAN.jpg'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //mazda
//                           'https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/fff43905f01200a393a6c1611666f603/large.jpg'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //Mitsubishi
//                           'https://wieck-mmna-production.s3.amazonaws.com/photos/d05f8e2530ea21931994bf23f5237e24afb0fff1/preview-928x522.jpg'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //Hyundai
//                           'https://leasingbrokernews.co.uk/wp-content/uploads/2016/11/Hyundai-Logo-SQUARE-200.jpg'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //Ford
//                           'https://www.logo-th.com/wp-content/uploads/2018/12/FORD.jpg'),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       // Navigator.push(
//                       //   context,
//                       //   MaterialPageRoute(builder: (context) => LoginPage()),
//                       // );
//                     },
//                     child: CircleAvatar(
//                       radius: 55.0,
//                       backgroundImage: NetworkImage(
//                           //Isuzu
//                           'https://fw.lnwfile.com/_/fw/_raw/6i/6h/jo.jpg'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// } //ec