import 'package:bus_bookingticket/widgets/home/location.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'home.dart';

class ConfirmTicket extends StatefulWidget {
  @override
  _ConfirmTicketState createState() => _ConfirmTicketState();
}

class _ConfirmTicketState extends State<ConfirmTicket> {
  
final List<Map> details = [
  {
    "travel": "Jabbar Travel",
    "dept": "18:45",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
  {
    "travel": "Jabbar Travels",
    "dept": "22:45",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
  {
    "travel": "Jabbar Travels",
    "dept": "08:25",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
  {
    "travel": "Jabbar Travels",
    "dept": "10:00",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
  {
    "travel": "Jabbar Travels",
    "dept": "13:05",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
  {
    "travel": "Jabbar Travels",
    "dept": "18:30",
    "dur": "06h 45m",
    "arrival": "05:30\n06-Feb",
    "train": "Madiwala"
  },
];
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
            Get.off(Home());
          },
        ),
      ),
       body: Stack(
        children: [
          Column(
            children: [
              
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
                            Text('Omni Bus Stand, Coimbatore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 20)),
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
                            Text('Madiwala, Bangalore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 20)),
                          ],
                        )
                      ),
                      Divider(
                        color: kGrayColor,
                        height: 10,
                        endIndent: 8,
                        indent: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('All bus ratings include safety as a major factor', style: TextStyle(color: kTextColor, fontSize: 13, fontWeight: FontWeight.w600)),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                height: 20,
                                child: FlatButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: kBorderColor),
                                  ), 
                                  child: Text('Filter')
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 18, 18, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('46 Buses', style: TextStyle(color: kTextColor, fontSize: 14, fontWeight: FontWeight.w600)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Showing 19 buses', style: TextStyle(color: kTextColor, fontSize: 14, fontWeight: FontWeight.w600)),
                                Text('from Coimbatore to Bangalore', style: TextStyle(color: kGrayColor, fontSize: 10, fontWeight: FontWeight.w400)),
                              ],
                            ),          
                          ],
                        ),
                      ),
                      Divider(
                        color: kGrayColor,
                        height: 10,
                        endIndent: 8,
                        indent: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                        child: Row(
                          children: [
                            Text('Travels', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                            Spacer(),
                            Text('Departure', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                            Spacer(),
                            Text('Duration', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                            Spacer(),
                            Text('Arrival', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                            Spacer(),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(top: 25),
                          width: double.infinity,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: details.length,
                            itemBuilder: (con, ind) {
                              return Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
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
                                child: InkWell(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(details[ind]['travel'], style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w700)),
                                                  Text('A/C Sleeper (2+1)', style: TextStyle(fontSize: 8, fontWeight: FontWeight.w300)),
                                                ],
                                              ),
                                              Spacer(),
                                              Text(details[ind]['dept'], style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w700)),
                                              Spacer(),
                                              Text(details[ind]['dur'], style: TextStyle(color: kGrayColor, fontSize: 12, fontWeight: FontWeight.w700)),
                                              Spacer(),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(details[ind]['arrival'], style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w700)),
                                                  Text(details[ind]['train'], style: TextStyle(color: kPrimaryColor, fontSize: 12, fontWeight: FontWeight.w400)),
                                                ],
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                          SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Expanded(child: Text('20 Seats available', style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w700))),
                                              Expanded(child: Text('Starts from', style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w400))),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(child: Text('11 Window', style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w700))),
                                              Expanded(child: Text('INR 750', style: TextStyle(color: kTextColor, fontSize: 12, fontWeight: FontWeight.w400))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        alignment: Alignment.bottomRight,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)
                                          ) 
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Book Ticket', style: TextStyle(color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold)),
                                        ),
                                      )
                                    ],
                                  ),
                                  onTap: () {
                                    Get.off(Location());
                                  },
                                ),
                                
                              );
                            }
                          )
                        ),
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