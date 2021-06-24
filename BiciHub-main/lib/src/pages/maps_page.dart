import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:bici_hub/src/widgets/back_button_own.dart';
import 'package:bici_hub/src/widgets/button.dart';
import 'package:bici_hub/src/widgets/text_field_own.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  Location _location = new Location();
  late GoogleMapController _controller;
  late LocationData _locationData;
  // var _latitude = 0.0;
  // var _longitude = 0.0;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    _location.getLocation().then((location) {
      _locationData = location;
      // _latitude = double.parse(_locationData.latitude.toString());
      print(_locationData.latitude);
      print(_locationData.longitude);
    });

    // _location.onLocationChanged.listen((locationData) {
    //   _locationData = locationData;
    //   _controller.animateCamera(
    //     CameraUpdate.newLatLng(
    //       LatLng(
    //         double.parse(_locationData.latitude.toString()),
    //         double.parse(_locationData.longitude.toString()),
    //       ),
    //     ),
    //   );
    // });

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              onMapCreated: (controlador) {
                _controller = controlador;
              },
              initialCameraPosition: CameraPosition(
                zoom: 14,
                target: LatLng(37.7599, -122.4152),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 15.0)
                  ],
                ),
                width: _size.width * 0.95,
                height: _size.height * 0.35,
                child: ListView(
                  physics: ScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 20.0, bottom: 2.0),
                            child: Text(
                              'HUBBICI WISHES YOU A GOOD DAY',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextFieldOwn('Direction', 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFieldOwn('Phone', 0.25),
                            TextFieldOwn('Space', 0.2),
                            TextFieldOwn('Price', 0.2),
                          ],
                        ),
                        Align(child: Button('Choose'))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BackButtonOwn(),
            )
          ],
        ),
      ),
    );
  }
}
