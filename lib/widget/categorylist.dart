import 'package:flutter/material.dart';
import 'package:news/models/categorymodel.dart';
import 'package:news/views/listofcategory.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key, required this.category});
  final Categorymodel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Listofcategory.id,
          arguments: category.categoryname,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          height: 110,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),
          ),

          child: Center(
            child: Text(
              category.categoryname,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
