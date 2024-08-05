import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:flutter_map/flutter_map.dart';

class LocationProvider extends ChangeNotifier {
  LocationProvider() {
    _init();
  }

  final Location _location = Location();
  LocationData? currentLocation;
  List<Marker> markers = [];
  final MapController mapController = MapController();

  Future<void> _init() async {
    try {
      currentLocation = await _location.getLocation();
      markers.add(
        Marker(
          width: 80,
          height: 80,
          point: LatLng(currentLocation!.latitude!, currentLocation!.longitude!),
          child:  const Icon(
            Icons.my_location,
            color: Colors.blue,
          ),
        ),
      );
      notifyListeners();
    } on Exception catch (e) {
      print("Error fetching location: $e");
    }

    _location.onLocationChanged.listen((newLocation) {
      currentLocation = newLocation;
      markers[0] = Marker(
        width: 80,
        height: 80,
        point: LatLng(newLocation.latitude!, newLocation.longitude!),
        child:  const Icon(
          Icons.my_location,
          color: Colors.blue,
        ),
      );
      notifyListeners();
    });
  }
}
