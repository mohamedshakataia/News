import 'package:flutter/material.dart';
import 'package:news/models/servicemodelapi.dart';
import 'package:news/widget/articles.dart';

class Newslistview extends StatelessWidget {
  const Newslistview({super.key, required this.article});
  final List<Servicemodelapi> article;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return articles(article: article[index]);
      }, childCount: article.length),
    );
  }
}
