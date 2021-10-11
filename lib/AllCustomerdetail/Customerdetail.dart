import 'dart:async';

import 'package:carcare/AllMenu/SettingMenu.dart';
import 'package:carcare/Favourite%20product/favouritePage.dart';
import 'package:carcare/servive/Acessories_class.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomerBody extends StatelessWidget {
  const CustomerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Drawer Menu',
        style: TextStyle(),
      )),
      body: MapZenHome(),
      drawer: ZenDrawer(),
    );
  }
}

class ZenDrawer extends StatelessWidget {
  const ZenDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('zen'),
            accountEmail: Text('Mr.Zen'),
            currentAccountPicture: CircleAvatar(
              child: Image.network(
                  "https://6.viki.io/image/3f4a120f384e4f208cbc39ba7d752083.jpeg?s=900x600&e=t"),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
              Text("Sliver"),
              CircleAvatar(
                child: Icon(Icons.add),
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey,
              )
            ],
          ),
          ListTile(
            title: Text('Favourite order'),
            onTap: () {
              goTo(context, Favourite());
            },
          ),
          ListTile(
            title: Text('Dark theme'),
            onTap: () {},
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                title: Text('setting'),
                onTap: () {
                  Setting();
                },
              ),
            ),
          ),
        ],
      ),
    );
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
    target: LatLng(13.614638145174, 100.84939385308694),
    zoom: 14.4746,
  );

  static final CameraPosition _zenHome = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(13.614638145174, 100.84939385308694),
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
        label: Text('To Zen Home'),
        icon: Icon(Icons.add_location_rounded),
      ),
    );
  }

  Future<void> _goToZenHome() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_zenHome));
  }
}
