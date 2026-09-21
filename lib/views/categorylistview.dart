import 'package:flutter/material.dart';
import 'package:news/models/categorymodel.dart';
import 'package:news/widget/categorylist.dart';

class Categorylistview extends StatelessWidget {
  Categorylistview({super.key});

  List<Categorymodel> catelist = [
    Categorymodel(
      image: 'assets/images/business.avif',
      categoryname: 'business',
    ),
    Categorymodel(
      image: 'assets/images/entertaiment.avif',
      categoryname: 'entertaiment',
    ),

    Categorymodel(image: 'assets/images/general.avif', categoryname: 'general'),

    Categorymodel(image: 'assets/images/health.avif', categoryname: 'health'),

    Categorymodel(image: 'assets/images/science.avif', categoryname: 'science'),

    Categorymodel(image: 'assets/images/sports.avif', categoryname: 'sports'),

    Categorymodel(
      image: 'assets/images/technology.jpeg',
      categoryname: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catelist.length,
        itemBuilder: ((context, index) {
          return Categorylist(category: catelist[index]);
        }),
      ),
    );
  }
}
