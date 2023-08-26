import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui';
import 'dart:ui';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import 'package:mugaga_task/screens/mapscreen/map_bottomsheet.dart';

import '../util/image.dart';

class MapController extends GetxController implements GetxService {
  Set<Marker> _markers = Set.of([]);
  Set<Marker> get markers => _markers;
  bool _scrolled = false;
  bool get scrolled => _scrolled;

  viewmore() {
    _scrolled = true;
    update();
  }

  showless() {
    _scrolled = false;
    update();
  }

  void setMarker(BuildContext context) async {
    Uint8List _one = await convertAssetToUnit8List(
      Images.avatar1,
      width: 120,
    );
    Uint8List _avatar2 = await convertAssetToUnit8List(
      Images.avatar2,
      width: 120,
    );
    Uint8List _avatar3 = await convertAssetToUnit8List(
      Images.avatar3,
      width: 120,
    );
    Uint8List _avatar4 = await convertAssetToUnit8List(
      Images.avatar4,
      width: 120,
    );
    Uint8List avatar5 = await convertAssetToUnit8List(
      Images.avatar5,
      width: 120,
    );
    Uint8List _avatar6 = await convertAssetToUnit8List(
      Images.avatar6,
      width: 120,
    );
    _markers = Set.of([]);
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker1'),
        position: LatLng(11.3215, 75.9953),
        icon: BitmapDescriptor.fromBytes(_one),
      ),
    );
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker2'),
        position: LatLng(10.9167, 75.9953),
        icon: BitmapDescriptor.fromBytes(_avatar2),
      ),
    );
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker3'),
        position: LatLng(11.1457, 75.9643),
        icon: BitmapDescriptor.fromBytes(_avatar3),
      ),
    );
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker4'),
        position: LatLng(11.1203, 76.1199),
        icon: BitmapDescriptor.fromBytes(_avatar4),
      ),
    );
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker5'),
        position: LatLng(11.2120, 76.1465),
        icon: BitmapDescriptor.fromBytes(avatar5),
      ),
    );
    _markers.add(
      Marker(
        onTap: () {
          _scrolled = false;
          update();
          Bottomsheet.showSheet(context);
        },
        markerId: MarkerId('marker6'),
        position: LatLng(11.0189, 76.1760),
        icon: BitmapDescriptor.fromBytes(_avatar6),
      ),
    );

    update();
  }

  Future<Uint8List> convertAssetToUnit8List(String imagePath,
      {int width = 30}) async {
    ByteData data = await rootBundle.load(imagePath);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  _ontap(BuildContext context) {}
}
