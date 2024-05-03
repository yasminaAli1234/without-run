import 'package:untitled12/model/source.dart';

class Article{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({required this.source, required this.author, required this.title, required this.description, required this.url,
    required this.urlToImage, required this.publishedAt, required this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json["source"]),
      author: json["author"] as String,
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
      publishedAt: json["publishedAt"],
      content: json["content"],
    );
  }
//
}