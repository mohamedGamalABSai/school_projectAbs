import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:school_system_abs/features/home/peresentation/view_model/map_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MapsSection extends StatelessWidget {
  const MapsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocationProvider(),
      child: Consumer<LocationProvider>(
        builder: (context, locationProvider, child) {
          return GestureDetector(
            onDoubleTap: () {
              if (locationProvider.currentLocation != null) {
                final lat = locationProvider.currentLocation!.latitude!;
                final lon = locationProvider.currentLocation!.longitude!;
                final url = _generateGoogleMapsUrl(lat, lon);
                _launchURL(url);
              }
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.2,
              child: locationProvider.currentLocation == null
                  ? const Center(child: CircularProgressIndicator())
                  : FlutterMap(
                      mapController: locationProvider.mapController,
                      options: MapOptions(
                        initialCenter: LatLng(
                            locationProvider.currentLocation!.latitude!,
                            locationProvider.currentLocation!.longitude!),
                        initialZoom: 15,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                          tileProvider: CancellableNetworkTileProvider(),
                        ),
                        MarkerLayer(
                          markers: locationProvider.markers,
                        ),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }

String _generateGoogleMapsUrl(double lat, double lon) {
  final uri = Uri(
    scheme: 'https',
    host: 'www.google.com',
    path: '/maps/place/',
    queryParameters: {'@': '${lat},${lon},17z', 'q': '${lat.toStringAsFixed(6)},${lon.toStringAsFixed(6)}'},
  );
  return uri.toString();
}

void _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
}
