import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mugaga_task/screens/dashbord/dashbord_scree.dart';
import 'package:mugaga_task/helper/lazy_initilization.dart'as di;
void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  DashboardScreen(),
    );
  }
}
