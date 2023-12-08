import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/utality/app_colors.dart';

///api key
///AIzaSyCNAD-Diehg7V0yHjDHVM1s3Sh7_-Ugvy0

class DirectionPage extends StatelessWidget {
  const DirectionPage({super.key});

  //const DirectionPage({Key? key}) : super(key: key);
  // final Completer<GoogleMapController> _controller =
  // Completer<GoogleMapController>();
  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: const LatLng(51.509364, -0.128928),
              zoom: 3.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              PolygonLayer(
                polygonCulling: false,
                polygons: [
                  Polygon(
                      points: [
                        const LatLng(36.95, -9.5),
                        const LatLng(42.25, -9.5),
                        const LatLng(42.25, -6.2),
                        const LatLng(36.95, -6.2),
                      ],
                      color: Colors.transparent,
                      borderStrokeWidth: 2,
                      borderColor: Colors.transparent,
                      isFilled: true),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Container(
              padding: const EdgeInsets.only(right: 0, left: 0),
              height: 7.h,
              // width: 75.w,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Search for place",
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      size: 30,
                    )),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.orange,
        onPressed: () {},
        child: const Icon(Icons.my_location_rounded),
      ),
    );
  }
}
