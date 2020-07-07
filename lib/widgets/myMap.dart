import 'dart:collection';

import 'package:estonian_history/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MyMap extends StatefulWidget {
  final LatLng coordinates;
  final double radius;
  final double zoom;
  final bool drawCircles;
  MyMap(
      {this.coordinates,
      this.radius = 50,
      this.zoom = 18,
      this.drawCircles = false});
  @override
  _MyMapState createState() =>
      _MyMapState(coordinates, radius, zoom, drawCircles);
}

class _MyMapState extends State<MyMap> {
  final LatLng coordinates;
  final double radius;
  final double zoom;
  final bool drawCircles;

  _MyMapState(this.coordinates, this.radius, this.zoom, this.drawCircles);

  final Completer<GoogleMapController> _mapController = Completer();
  Set<Circle> _circles = HashSet<Circle>();
  MapType currentMapType = MapType.normal;

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
            mapType: currentMapType,
            initialCameraPosition: CameraPosition(
              target: coordinates,
              zoom: zoom,
            ),
            onMapCreated: (GoogleMapController controller) {
              _mapController.complete(controller);
            },
            circles: drawCircles ? _circles : null,
          ),
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    currentMapType == MapType.satellite
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: kPrimaryColor,
                            ),
                            margin: EdgeInsets.only(left: 4, top: 4),
                            width: 40,
                            height: 40,
                          )
                        : Container(),
                    Container(
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
                Stack(
                  children: [
                    currentMapType == MapType.satellite
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: kPrimaryColor,
                            ),
                            margin: EdgeInsets.only(left: 4, top: 4),
                            width: 40,
                            height: 40,
                          )
                        : Container(),
                    IconButton(
                      icon: Icon(Icons.map),
                      color: kText2Color,
                      onPressed: () {
                        onMapTypeButtonPressed();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onMapTypeButtonPressed() {
    setState(() {
      currentMapType =
          currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }
}
