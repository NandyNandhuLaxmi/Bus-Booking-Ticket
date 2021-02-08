import 'package:bus_bookingticket/widgets/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Splash_View(),
      title: Text(
        'Company Name and Logo',
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      backgroundColor: kPrimaryColor,
      photoSize: 100,
      useLoader: false,
    );
  }
}

class Splash_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              child: Image.asset(
               'assets/images/bus ticket.jpeg',
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Get.off(Home());
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [kGradient1Color, kGradientColor],
                    end: Alignment.topLeft, 
                    begin: Alignment.bottomRight, 
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
      
    );
  }
}