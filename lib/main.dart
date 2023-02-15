import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomePage/View/Homepageview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}

  // This widget is the root of your application.
  