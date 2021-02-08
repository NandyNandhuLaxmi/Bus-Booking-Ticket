import 'package:bus_bookingticket/widgets/home/bill.dart';
import 'package:bus_bookingticket/widgets/home/confirmticket.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../constants.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kSecondaryColor,
          ),
          onPressed: () {
            Get.off(ConfirmTicket());
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Color(0xFFFFFFFF),
              ),
              child: Stack(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    margin: const EdgeInsets.only(top: 15),
                    child: WebView(
                      initialUrl: 'https://www.google.co.in/maps/',
                      javascriptMode: JavascriptMode.unrestricted,
                      
                    ),
                  ),
                  //https://www.google.co.in/maps/
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          //alignment: Alignment.bottomCenter,
                          width: double.infinity,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(10, 10),
                                color: Colors.black45
                                  .withOpacity(0.35),
                                blurRadius: 20.0),
                              BoxShadow(
                                offset: Offset(-10, -10),
                                color: Colors.white,
                                blurRadius: 20.0),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Distance', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500)),
                                  Text('Omni Bus Stand, Coimbatore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w800)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Source', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500)),
                                  Text('Madiwala, Bangalore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w800)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Colors.black45
                                    .withOpacity(0.35),
                                  blurRadius: 20.0),
                                BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Colors.white,
                                  blurRadius: 20.0),
                                ]
                            ),
                            child: Text('Share location', style: TextStyle(color: kSecondaryColor, fontWeight: FontWeight.bold)),
                          ),
                          onTap: () { Get.off(Bill()); },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ) 
          )
        ]
      ),
      
    );
  }
}


