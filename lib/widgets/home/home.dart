import 'package:bus_bookingticket/constants.dart';
import 'package:bus_bookingticket/widgets/home/confirmticket.dart';
import 'package:bus_bookingticket/widgets/splash/splash.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            Get.off(Splash_View());
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Good Morning Nandy', style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 28)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(18, 18 ,18 , 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('From'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Omni Bus Stand, Coimbatore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 20)),
                                Icon(EvaIcons.arrowDownOutline, color: kPrimaryColor),
                              ],
                            ),
                          ],
                        )
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.fromLTRB(18, 18 ,18 , 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('To'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Madiwala, Bangalore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 20)),
                                Icon(EvaIcons.arrowDownOutline, color: kPrimaryColor),
                              ],
                            ),
                          ],
                        )
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                margin: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Morning'),
                                    Text('09.06 AM', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            )
                          ),
                           Expanded(
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                margin: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Afternoon'),
                                    Text('01.06 AM', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            )
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                margin: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Evening'),
                                    Text('06.06 AM', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            )
                          ),
                           Expanded(
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                margin: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius: BorderRadius.circular(5.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Night'),
                                    Text('10.06 AM', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            )
                          )
                        ],
                      ),


                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.3,
                          margin: const EdgeInsets.all(18.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(5.0),
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
                          child: Container(
                            alignment: Alignment.center,
                            child: Text('Next', style: TextStyle(color: kSecondaryColor, fontWeight: FontWeight.w600))),
                        ),
                        onTap: () {
                          Get.offAll(ConfirmTicket());
                        },
                      )
                    ]
                  ),
                )
              )
            ],
          )
        ],
      ),
      
    );
  }
}