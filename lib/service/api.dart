import 'package:dio/dio.dart';
import 'package:news/models/servicemodelapi.dart';

class Api {
  final Dio dio;
  Api(this.dio);

  Future<List<Servicemodelapi>> getApi({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=2ad9f4b3f0474f6d890fbdfa81cd6858&category=$category',
      );
      Map<String, dynamic> Datajson = response.data;

      List<dynamic> articles = Datajson['articles'];

      List<Servicemodelapi> articlelist = [];

      for (var article in articles) {
        articlelist.add(Servicemodelapi.fromjson(article));
      }
      return articlelist;
    } on DioException catch (e) {
      throw Exception(
        'An error occurred:${e.response?.data['message'] ?? e.message}',
      );
      // TODO
    }
  }
}
