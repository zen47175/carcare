import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

// Set<Marker> markers = Set();
// void addNewMarker(
//     {required String id,
//     required String title,
//     required double lat,
//     required double lon}) {
//   //to clear last record
//   markers.clear();
//   //add new maker
//   // mm is the function that will return object maker after take 4 inputs
//   markers.add(mm(id: id, title: title, lat: lat, lon: lon));
//   // notifyListeners();
// }

// Marker mm(
//     {required String id,
//     required String title,
//     required double lat,
//     required double lon}) {
//   //create marker and return it
//   Marker m1 = Marker(
//     markerId: MarkerId(id),
//     infoWindow: InfoWindow(title: title, snippet: title),
//     position: LatLng(lat, lon),
//   );
//   return m1;
// } //ef

class StoreLanguage extends ChangeNotifier {
  String _h1 = "Home";
  String _h2 = "Car Brand";
  String _h3 = "Popular Car";
  String _h4 = "Language Set up";
  String _h5 = "Change Language";
  String _h6 = "Ma LoveLy IU";
  String _h7 = "All Accessory";
  String _h8 = "Categories";
  String _h9 = "Charger";
  String _h10 = "camera";

  String get h1 => _h1;
  String get h2 => _h2;
  String get h3 => _h3;
  String get h4 => _h4;
  String get h5 => _h5;
  String get h6 => _h6;
  String get h7 => _h7;
  String get h8 => _h8;
  String get h9 => _h9;
  String get h10 => _h10;


    Set<Marker> markers = Set();
  void addNewMarker(
      {required String id,
      required String title,
      required double lat,
      required double lon}) {
    //to clear last record
    markers.clear();
    //add new maker
    // mm is the function that will return object maker after take 4 inputs
    markers.add(mm(id: id, title: title, lat: lat, lon: lon));
    notifyListeners();
  }

  Marker mm(
      {required String id,
      required String title,
      required double lat,
      required double lon}) {
    //create marker and return it
    Marker m1 = Marker(
      markerId: MarkerId(id),
      infoWindow: InfoWindow(title: title, snippet: title),
      position: LatLng(lat, lon),
    );
    return m1;
  } //ef
  

  List<Product> _products = [];
  List<Product> get products => _products;
  List<Product> _cart = [];
  List<Product> get cart => _cart;

  void addProduct(Product p) {
    p.qty++;
    if (p.qty == 1) {
      _cart.add(p);
    }
    print(_cart);
    notifyListeners();
  } //ef

  
//   late int _activeTab = 0;
// //geter
//   int get activeTab => _activeTab;
// //setter
//   void setActiveTab(int index) {
//     _activeTab = index;
//     notifyListeners();
//   } //ef


}



// class TopMostWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       home: LoginPage(),
//     );
//   }
// }
