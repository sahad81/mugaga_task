import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mugaga_task/controlls/dashbord_controller.dart';

import 'package:mugaga_task/screens/camara_screen.dart';
import 'package:mugaga_task/screens/chat_screen.dart';
import 'package:mugaga_task/screens/dashbord/bottom_nav_item.dart';
import 'package:mugaga_task/screens/mapscreen/map_screen.dart';
import 'package:mugaga_task/screens/reeel_screen.dart';
import 'package:mugaga_task/screens/stories_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget>? _screens;

  @override
  void initState() {
    super.initState();
    Get.find<DashBordController>().initpage();

    _screens = [
      LocationScreen(),
      const ChatScreen(),
      const CamaraScreen(),
      const StoriesScreen(),
      const ReelScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.black,
        color: Colors.black,
        child: GetBuilder<DashBordController>(builder: (c) {
          return Row(children: [
            BottomNavItem(
                iconData: CupertinoIcons.location_solid,
                isSelected: c.pageIndex == 0,
                onTap: () => c.setPage(0)),
            BottomNavItem(
                iconData: Icons.message,
                isSelected: c.pageIndex == 1,
                onTap: () => c.setPage(1)),
            BottomNavItem(
                iconData: Icons.camera_alt_rounded,
                isSelected: c.pageIndex == 2,
                onTap: () => c.setPage(2)),
            BottomNavItem(
                iconData: Icons.group,
                isSelected: c.pageIndex == 3,
                onTap: () => c.setPage(3)),
            BottomNavItem(
                iconData: Icons.arrow_forward_sharp,
                isSelected: c.pageIndex == 4,
                onTap: () => c.setPage(4)),
          ]);
        }),
      ),
      body: SizedBox(
        child: GetBuilder<DashBordController>(builder: (c) {
          return PageView.builder(
            controller: c.pageController,
            itemCount: _screens?.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _screens?[index];
            },
          );
        }),
      ),
    );
  }
}

