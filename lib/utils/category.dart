import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({super.key, required this.categoryName, this.Icons});
  final String categoryName;
  final Icons;

  // late String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          // border: Border.all(color: Colors.deepPurple)),
          // color: Colors.indigo[600],
          // border: Border.all(color: Colors.indigo, width: 2)
          color: Colors.indigo),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(
          //   Icons,
          //   color: Colors.indigo,
          // ),
          Text(
            categoryName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
