import 'package:flutter/material.dart';
import 'package:news/models/servicemodelapi.dart';

class articles extends StatelessWidget {
  const articles({super.key, required this.article});
  final Servicemodelapi article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(article.image ?? ''),
              ),
            ),
          ),

          SizedBox(height: 15),

          Text(
            article.title ?? '',
            maxLines: 2,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),

          SizedBox(height: 10),

          Text(
            article.description ?? '',
            maxLines: 2,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
