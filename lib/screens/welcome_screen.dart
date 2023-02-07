// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:happy_travel/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreens(),
            ));
      },
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     colors: [Color.fromARGB(255, 72, 221, 1241), Colors.white],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/images/WelcomeTravel.png'),
            Text(
              'Thiew Laos',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript',
                  // color: Color.fromARGB(255, 16, 41, 77)
                  color: Colors.indigo[700]
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
