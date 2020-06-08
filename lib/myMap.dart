import 'dart:collection';

import 'package:estonian_history/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(home: MyMap()));
}

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  final Completer<GoogleMapController> _mapController = Completer();

  Set<Circle> _circles = HashSet<Circle>();
  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(58.419206, 24.676686),
          radius: 50,
          strokeWidth: 2,
          fillColor: Colors.black12),
    );
  }

  @override
  void initState() {
    super.initState();
    _setCircles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(58.419206, 24.676686),
              zoom: 18,
            ),
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
            circles: _circles,
          ),
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 35),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: kText2Color,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
