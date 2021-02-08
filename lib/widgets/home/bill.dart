import 'package:bus_bookingticket/widgets/home/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class Bill extends StatefulWidget {
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
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
            Get.off(Location());
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
              child: Center(
                child: FlutterTicketWidget(
                  width: 350.0,
                  height: 500.0,
                  color: Color(0xFFF6F6F6),
                  isCornerRounded: true,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Coimbatore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w400)),
                            Text('Bangalore', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w400)),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text('Booking Time: 04 Feb 2021', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w700)),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Arrival', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                            Text('Rs. 850', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Divider(
                          color: kGrayColor,
                          height: 20,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('From', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                                Text('10.30 PM', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bus No', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                                Text('TN 25 k 2801', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Seat No', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                                Text('P1, P2', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                         Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Passenger', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                                Text('Daniel', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bus Stand', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
                                Text('Omni Bus Stand', style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600)),
                              ],
                            ),
                            Spacer()
                          ],
                        ),
                        Divider(
                          color: kGrayColor,
                          height: 20,
                          thickness: 0.5,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                          child: Container(
                            width: 250.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/barcode.png'),
                                  fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),


                      ],
                    ),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Container(
            //           width: 120.0,
            //           height: 25.0,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(30.0),
            //             border: Border.all(width: 1.0, color: Colors.green),
            //           ),
            //           child: Center(
            //             child: Text(
            //               'A/C Sleeper Class',
            //               style: TextStyle(color: Colors.green),
            //             ),
            //           ),
            //         ),
            //         Row(
            //           children: <Widget>[
            //             Text(
            //               'CBE',
            //               style: TextStyle(
            //                   color: Colors.black, fontWeight: FontWeight.bold),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8.0),
            //               child: Icon(
            //                 Icons.directions_bus_outlined,
            //                 color: Colors.pink,
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8.0),
            //               child: Text(
            //                 'BLR',
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold),
            //               ),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 20.0),
            //       child: Text(
            //         'Bus Ticket',
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 25.0),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           ticketDetailsWidget(
            //               'Passengers', 'Nandy', 'Date', '07-02-2021'),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 12.0, right: 40.0),
            //             child: ticketDetailsWidget(
            //                 'Bus', '76836A45', 'Seat No', '66B'),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 12.0, right: 40.0),
            //             child: ticketDetailsWidget(
            //                 'Class', 'A/C Sleeper', 'Seat', '21B'),
            //           ),
            //         ],
            //       ),
            //     ),
                
            //     Padding(
            //       padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
            //       child: Container(
            //         width: 250.0,
            //         height: 60.0,
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage('assets/images/barcode.png'),
            //                 fit: BoxFit.cover)),
            //       ),
            //     ),
            //     Padding(
            //       padding:
            //           const EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
            //       child: Text(
            //         '9824 0972 1742 1298',
            //         style: TextStyle(
            //           color: Colors.black,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ),
        ),
      ),

            ) 
          )
        ],
      ),
      
    );
  }
}


Widget ticketDetailsWidget(String firstTitle, String firstDesc,
      String secondTitle, String secondDesc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  firstDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                secondTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  secondDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }