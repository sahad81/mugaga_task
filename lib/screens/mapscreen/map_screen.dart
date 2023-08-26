import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mugaga_task/controlls/map_controller.dart';
import 'package:mugaga_task/util/dimensions.dart';
import 'package:mugaga_task/util/image.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  void initState() {
    Get.find<MapController>().setMarker(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<MapController>(builder: (c) {
            return Container(
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(11.0510, 76.0711),
                    zoom: 10,
                  ),
                  minMaxZoomPreference: MinMaxZoomPreference(0, 16),
                  zoomGesturesEnabled: true,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  indoorViewEnabled: true,
                  markers: c.markers,
                  onTap: (argument) {},
                ));
          }),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                child: Row(
                  children: [
                    SizedBox(
                      width: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Container(
                      width: _size * 0.05,
                      height: _size * 0.05,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Center(
                        child: SizedBox(
                            width: _size * 0.04,
                            height: _size * 0.03,
                            child: Image.asset(
                              Images.avatar1,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Container(
                      width: _size * 0.05,
                      height: _size * 0.05,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Center(
                        child: SizedBox(
                            width: _size * 0.03,
                            height: _size * 0.03,
                            child: Icon(Icons.search)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: _size * 0.05,
                      height: _size * 0.05,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Center(
                          child: SizedBox(
                              width: _size * 0.04,
                              height: _size * 0.04,
                              child: Icon(Icons.settings))),
                    ))),
          )
        ],
      ),
    );
  }
}
