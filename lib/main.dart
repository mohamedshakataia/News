import 'package:flutter/material.dart';
import 'package:news/views/home_page.dart';
import 'package:news/views/listofcategory.dart';

void main() {
  runApp(News());
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        Listofcategory.id: (context) => Listofcategory(),
      },

      initialRoute: HomePage.id,
    );
  }
}
