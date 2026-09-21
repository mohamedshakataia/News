import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/service/api.dart';
import 'package:news/views/newslistview.dart';

class Newslistviewbuilder extends StatelessWidget {
  const Newslistviewbuilder({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Api(Dio()).getApi(category: category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Newslistview(article: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(child: Text(snapshot.error.toString()));
        } else {
          return SliverToBoxAdapter(
            child: const Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
