import 'package:flutter/material.dart';
import 'package:happy_travel/models/place_model.dart';

class LocationDetailScreen extends StatelessWidget {
  // const LocationDetailScreen({super.key});

  final PlaceInfo placeInfo;

  const LocationDetailScreen({super.key, required this.placeInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(placeInfo.name),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
    );
  }
}
