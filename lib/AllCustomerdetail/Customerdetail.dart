import 'dart:async';
import 'package:carcare/AllMenu/SettingMenu.dart';
import 'package:carcare/Favourite%20product/favouritePage.dart';
import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class CustomerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store1 = Provider.of<StoreLanguage>(context);
    return MapZenHome();
    // Scaffold(
    //   appBar: AppBar(
    //       title: Text(
    //     'Drawer Menu',
    //     style: TextStyle(),
    //   )),
    //   body: MapZenHome(),
    // );
  }
}



// ignore: must_be_immutable
class MapZenHome extends StatefulWidget {
  // BuildContext m;
  // MapZenHome(this.m);

  @override
  State<MapZenHome> createState() => MapZenHomeState();
}

class MapZenHomeState extends State<MapZenHome> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.09343862059299,
            100.91560968721942,),
    zoom: 14.4746,
  );

  static final CameraPosition _zenHome = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(13.09343862059299,
            100.91560968721942,),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToZenHome,
        label: Text('Car Tent'),
        icon: Icon(Icons.add_location_rounded),
        backgroundColor: Colors.blue[300],
      ),
    );
  }

  Future<void> _goToZenHome() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_zenHome));
  }


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   var store1 = Provider.of<StoreLanguage>(widget.m); //refer to parent of this class
  //   super.initState();
  //   store1.addNewMarker(
  //     id: "1",
  //     title: "home",
  //     lat: 13.618595,
  //     lon: 100.838804,
  //   );
  // }
}







// class MapPage extends StatefulWidget {
//   BuildContext m;
//   MapPage({required this.m});
//   @override
//   _MapPageState createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   Completer<GoogleMapController> _controller1 = new Completer();
//   @override
//   Widget build(BuildContext context) {
//     var store1 = Provider.of<DataStore>(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[800],
//         title: Text(store1.t4).tr(),
//         //Text("Car Tent"),
//       ),
//       body: GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(
//             13.09343862059299,
//             100.91560968721942,
//           ),
//           zoom: 18,
//         ),
//         onMapCreated: (GoogleMapController m) {
//           _controller1
//               .complete(m); //when it is called  , send absoulute control
//         },
//         markers: store1.markers,
//       ),
//     );
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     var store1 =
//         Provider.of<DataStore>(widget.m); //refer to parent of this class
//     super.initState();
//     store1.addNewMarker(
//       id: "1",
//       title: "home",
//       lat: 13.09343862059299,
//       lon: 100.91560968721942,
//     );
//   }
// }

