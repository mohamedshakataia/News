import 'package:flutter/material.dart';
import 'package:news/views/categorylistview.dart';

import 'package:news/views/newslistview.dart';

import 'package:news/widget/newslistviewbuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
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
        slivers: [
          SliverToBoxAdapter(child: Categorylistview()),

          Newslistviewbuilder(category: 'general'),
        ],
      ),

      // Column(
      //   children: [
      //     Categorieslistview(),
      //     Expanded(child: Newslistview()),
      //   ],
      // ),
    );
  }
}
