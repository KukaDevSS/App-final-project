// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:happy_travel/models/place_model.dart';
import 'package:happy_travel/screens/locationdetail_screen.dart';

class PlacesDetailScreen extends StatefulWidget {
  const PlacesDetailScreen({super.key, required this.placeInfo});
  final PlaceInfo placeInfo;

  @override
  State<PlacesDetailScreen> createState() => _PlacesDetailScreenState();
}

class _PlacesDetailScreenState extends State<PlacesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ລາຍລະອຽດສະຖານທີ່',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo[600],
      ),
      body: Stack(
        children: [
          Image.asset(
            widget.placeInfo.image,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.37,
                ),
                Expanded(
                  child: Container(
                    // height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.indigo,
                                ),
                                Text(
                                  widget.placeInfo.name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ລາຍລະອຽດ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(widget.placeInfo.description),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'ຮູບພາບປະກອບ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 220,
                              width: double.infinity,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 300,
                                          color: Colors.amber,
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.image1),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 300,
                                          color: Colors.amber,
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.image2),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 300,
                                          color: Colors.amber,
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.image3),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 300,
                                          color: Colors.amber,
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.image4),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 300,
                                          color: Colors.amber,
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.image5),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // color: Colors.amber,
                              // child: ListView.builder(
                              //   scrollDirection: Axis.horizontal,
                              //   itemCount: 5,
                              //   itemBuilder: (BuildContext context, int index) {
                              //     return Row(
                              //       children: [
                              //         Padding(
                              //           padding: const EdgeInsets.symmetric(
                              //               horizontal: 10),
                              //           child: Stack(
                              //             children: [
                              //               GestureDetector(
                              //                 child: Container(
                              //                   height: 200,
                              //                   width: 300,
                              //                   decoration: BoxDecoration(
                              //                       color: Colors.indigo,
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               12)),
                              //                   child: ClipRRect(
                              //                     borderRadius:
                              //                         BorderRadius.circular(12),
                              //                     child: Image(
                              //                       image: AssetImage(widget
                              //                           .placeInfo.image1),
                              //                       width:
                              //                           MediaQuery.of(context)
                              //                               .size
                              //                               .width,
                              //                       height: 200,
                              //                       fit: BoxFit.cover,
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ),
                              //             ],
                              //           ),
                              //         )
                              //       ],
                              //     );
                              //   },
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('ໂຮງແຮມ',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(12)),
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.hotel1),
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        // width: MediaQuery.of(context).size.widt
                                        width: 220,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.placeInfo.hname1,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Row(
                                                children: [
                                                  Text('4.0'),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'Text about this hotel.Text about this hotel.'),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.indigo,
                                                      ),
                                                      Text(
                                                        '0.00ມ',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'ລາຄາ X00.000 K',
                                                    style: TextStyle(
                                                        color: Colors.indigo),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(12)),
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.hotel2),
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        // width: MediaQuery.of(context).size.widt
                                        width: 220,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.placeInfo.hname2,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Row(
                                                children: [
                                                  Text('4.0'),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'Text about this hotel.Text about this hotel.'),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.indigo,
                                                      ),
                                                      Text(
                                                        '0.00ມ',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'ລາຄາ X00.000 K',
                                                    style: TextStyle(
                                                        color: Colors.indigo),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'ຮ້ານອາຫານ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(12)),
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.rest1),
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        // width: MediaQuery.of(context).size.widt
                                        width: 220,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.placeInfo.rname1,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Row(
                                                children: [
                                                  Text('4.0'),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'Text about this hotel.Text about this hotel.'),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.indigo,
                                                      ),
                                                      Text(
                                                        '0.00ມ',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'ລາຄາ X00.000 K',
                                                    style: TextStyle(
                                                        color: Colors.indigo),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade600,
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(12)),
                                          child: Image(
                                            image: AssetImage(
                                                widget.placeInfo.rest2),
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        // width: MediaQuery.of(context).size.widt
                                        width: 220,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.placeInfo.rname2,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Row(
                                                children: [
                                                  Text('4.0'),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  'Text about this hotel.Text about this hotel.'),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.indigo,
                                                      ),
                                                      Text(
                                                        '0.00ມ',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    'ລາຄາ X00.000 K',
                                                    style: TextStyle(
                                                        color: Colors.indigo),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'ແຜ່ນທີ່',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(color: Colors.indigo),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
