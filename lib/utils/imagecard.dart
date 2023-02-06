// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:happy_travel/models/place_model.dart';
// import 'package:image_card/image_card.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.placeInfo});
  final PlaceInfo placeInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0,5),
              ),
              // BoxShadow(
              //   color: Colors.grey.shade300,
              //   offset: const Offset(-5, 0),
              // )
            ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                placeInfo.image,
                height: 170,
                width: MediaQuery.of(context).size.width,
                // width: 130,
                fit: BoxFit.cover,
                // width: 100,
              ),
            ),
            SizedBox(height: 10),

            // doctor name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  placeInfo.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    // Text(
                    //   rating,
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 5,
            ),

            // doctor title
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  placeInfo.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
