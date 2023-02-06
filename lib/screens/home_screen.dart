// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:happy_travel/models/place_model.dart';
import 'package:happy_travel/models/popular_model.dart';
import 'package:happy_travel/screens/place_screen.dart';
// import 'package:happy_travel/screens/place_screens.dart';
import 'package:happy_travel/screens/placesdetail_screen.dart';
import 'package:happy_travel/utils/carousel_slide.dart';
import 'package:happy_travel/utils/category.dart';
import 'package:happy_travel/utils/drawer.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar session
      drawer: DrawerSide(),
      appBar: AppBar(
        // shadowColor: Colors.black,
        title: Text('ໜ້າຫຼັກ'),
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
        // backgroundColor: Color.fromRGBO(134, 60, 208, 100),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
              color: Colors.white,
              iconSize: 30,
            );
          }),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10))
        ],
      ),

      // Body sessions
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              // root container
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    // Carousel image slider
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        child: ImageSlider(),
                      ),
                    ),
                    // Category menu
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CategoryMenu(
                                  categoryName: 'Cate 1',
                                  Icons: Icons.dashboard,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PlaceScreen(),
                                        ));
                                  },
                                  child: CategoryMenu(
                                    categoryName: 'Places',
                                    Icons: Icons.dashboard,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CategoryMenu(
                                    categoryName: 'Cate 3',
                                    Icons: Icons.dashboard),
                                CategoryMenu(
                                    categoryName: 'Cate 4',
                                    Icons: Icons.dashboard),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Search
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Colors.indigo,
                                strokeAlign: StrokeAlign.outside,
                                width: 2)),
                        child: TextField(
                          style: TextStyle(fontSize: 18, color: Colors.indigo),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'ຄົ້ນຫາ...',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    //Image card session
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 25, right: 25, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular suggestion',
                            style: TextStyle(
                              // decoration: TextDecoration.underline,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlaceScreen()));
                              },
                              child: Text('See all')),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => PlaceScreen()));
                          //     },
                          //     child: Row(
                          //       children: [
                          //         Text('See all'),
                          //         // Icon(
                          //         //   Icons.arrow_forward,
                          //         //   size: 16,
                          //         // )
                          //       ],
                          //     ))
                        ],
                      ),
                    ),
                    //Text description
                    // SizedBox(height: 2),
                    Container(
                      height: 600,
                      child: ListView.builder(
                        itemCount: popular.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: RecommendedCard(
                                    popularInfo: popular[index],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PlacesDetailScreen(
                                            placeInfo: places[index],
                                          ),
                                        ));
                                    print('Clicked on index $index');
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final PopularInfo popularInfo;
  // final VoidCallback press;
  const RecommendedCard({
    Key? key,
    required this.popularInfo,
    // required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 250, 250),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ]),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image(
                      image: AssetImage(popularInfo.image),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.amber,
                            ),
                            Text(
                              popularInfo.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              popularInfo.rating,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          popularInfo.description,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
