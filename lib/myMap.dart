import 'dart:collection';

import 'package:estonian_history/constants.dart';
import 'package:estonian_history/widgets/backButton.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
      home: MyMap(
    coordinates: LatLng(58.419206, 24.676686),
  )));
}

class MyMap extends StatefulWidget {
  final LatLng coordinates;
  final double radius;
  final double zoom;
  MyMap({this.coordinates, this.radius = 50, this.zoom = 18});
  @override
  _MyMapState createState() => _MyMapState(coordinates, radius, zoom);
}

class _MyMapState extends State<MyMap> {
  final LatLng coordinates;
  final double radius;
  final double zoom;
  _MyMapState(this.coordinates, this.radius, this.zoom);

  final Completer<GoogleMapController> _mapController = Completer();

  Set<Circle> _circles = HashSet<Circle>();
  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: coordinates,
          radius: radius,
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
              target: coordinates,
              zoom: zoom,
            ),
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
            circles: _circles,
          ),
          backButton(context, kText2Color)
        ],
      ),
    );
  }
}
