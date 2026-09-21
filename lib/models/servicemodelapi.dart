class Servicemodelapi {
  final String? title;
  final String? description;
  final String? image;
  Servicemodelapi({this.title, this.description, this.image});

  factory Servicemodelapi.fromjson(Datajson) {
    return Servicemodelapi(
      title: Datajson['title'] ?? '',
      description: Datajson['description'] ?? '',
      image: Datajson['urlToImage'] ?? '',
    );
  }
}
