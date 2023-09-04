import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationAndMapPage extends StatefulWidget {
  @override
  _LocationAndMapPageState createState() => _LocationAndMapPageState();
}

class _LocationAndMapPageState extends State<LocationAndMapPage> {
  Location location = Location();
  GoogleMapController? mapController;
  Set<Marker> markers = {}; 

  @override
  void initState() {
    super.initState();
    _initMap();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(0, 0), 
                zoom: 14,
              ),
              markers: markers, 
              onMapCreated: (controller) {
                setState(() {
                  mapController = controller;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _initMap() async {
    await _requestPermissionAndShowLocation();
    _listenToLocationChanges();
  }

  Future<void> _requestPermissionAndShowLocation() async {
    final PermissionStatus permissionStatus = await location.requestPermission();
    if (permissionStatus == PermissionStatus.granted) {
      _showCurrentLocation();
    }
  }

  void _showCurrentLocation() async {
    var value = await location.getLocation();
    if (value != null && mapController != null) {
      setState(() {
        markers.clear(); 
        markers.add(
          Marker(
            markerId: MarkerId('current_location'),
            position: LatLng(value.latitude!, value.longitude!),
            infoWindow: InfoWindow(title: 'Mevcut Konum'),
          ),
        );
      });

      mapController!.animateCamera(CameraUpdate.newLatLng(LatLng(value.latitude!, value.longitude!)));
    }
  }
//Kullanıcıyı dinleme 
  void _listenToLocationChanges() {
    location.onLocationChanged.listen((LocationData currentLocation) {
      if (mapController != null) {
        setState(() {
          markers.clear(); 
          markers.add(
            Marker(
              markerId: MarkerId('current_location'),
              position: LatLng(currentLocation.latitude!, currentLocation.longitude!),
              infoWindow: InfoWindow(title: 'Mevcut Konum'),
            ),
          );
        });

        mapController!.animateCamera(CameraUpdate.newLatLng(LatLng(currentLocation.latitude!, currentLocation.longitude!)));
      }
    });
  }
}