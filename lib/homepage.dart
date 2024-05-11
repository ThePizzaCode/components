import 'dart:async';

import 'package:components/get_location.dart';
import 'package:components/map_controller.dart';
import 'package:components/modals/HomePageModal.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  late GoogleMapController mapController;

  void setupPositionLocator() async {
    final pos = await getCurrentLocation();

    CameraPosition cp = CameraPosition(
        target: LatLng(
          pos?.latitude ?? 0.0,
          pos?.longitude ?? 0.0,
        ),
        zoom: 17);
    mapController.animateCamera(CameraUpdate.newCameraPosition(cp));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          compassEnabled: false,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          mapToolbarEnabled: false,
          initialCameraPosition: const CameraPosition(
            target: LatLng(44.4364384, 26.0863522),
            zoom: 13.0,
          ),
          onMapCreated: (GoogleMapController controller) async {
            Geolocator.requestPermission();
            _controller.complete(controller);
            mapController = controller;

            setCameraLocation(mapController);
          },
        ),
        HomePageModal(),
      ],
    ));
  }
}
