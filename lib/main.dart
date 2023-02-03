import 'package:flutter/material.dart';
import 'package:happy_travel/screens/place_screen.dart';
// import 'package:happy_travel/screens/place_screens.dart';
import 'package:happy_travel/screens/welcome_screen.dart';
import 'package:happy_travel/utils/carousel_slide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
      // home: ImageSlider(),
      // home: PlaceScreen(),
      // home: PlacesScreen(),
    );
  }
}
