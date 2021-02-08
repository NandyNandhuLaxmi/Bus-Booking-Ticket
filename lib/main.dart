import 'package:bus_bookingticket/constants.dart';
import 'package:bus_bookingticket/responsive/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'montserrat',
        primaryColor: kPrimaryColor,
      ),
      home: responsive(),
    );
  }
}

