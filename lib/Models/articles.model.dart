class Article{

  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String context;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.context,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    author : json["author"] ?? 'Not Author',
    title : json["title"] ?? 'Not Title',
    description : json["description"] ?? 'Not Description',
    url : json["url"] ?? 'Not URL',
    urlToImage: json["urlToImage"] ?? 'Not URL To Image',
    publishedAt : json["published_at"] ?? 'Not Published At',
    context : json["context"] ?? 'Not Context',
  );

}