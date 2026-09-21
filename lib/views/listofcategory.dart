import 'package:flutter/material.dart';
import 'package:news/widget/newslistviewbuilder.dart';

class Listofcategory extends StatelessWidget {
  const Listofcategory({super.key});
  static String id = 'Listofcategory';

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [Newslistviewbuilder(category: category)],
      ),
    );
  }
}
