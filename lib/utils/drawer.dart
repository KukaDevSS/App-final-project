// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:happy_travel/screens/contact_screen.dart';
import 'package:happy_travel/screens/place_screen.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({super.key});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo[600],
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: Text(
                  'Happy Travels',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 5,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white, width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                        color: Colors.black,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.indigo[600],fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                  leading: Icon(
                    Icons.home,
                    color: Colors.indigo[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white, width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                        color: Colors.black,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: ListTile(
                  title: Text(
                    'Account',
                    style: TextStyle(color: Colors.indigo[600],fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                  leading: Icon(
                    Icons.person,
                    color: Colors.indigo[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white, width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                        color: Colors.black,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(color: Colors.indigo[600],fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                  leading: Icon(
                    Icons.settings,
                    color: Colors.indigo[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white, width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                        color: Colors.black,
                        offset: const Offset(0, 3),
                      )
                    ]),
                child: ListTile(
                  title: Text(
                    'Contact',
                    style: TextStyle(color: Colors.indigo[600],fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactScreen(),
                        ));
                  },
                  leading: Icon(
                    Icons.group,
                    color: Colors.indigo[600],
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Version 1.0',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
