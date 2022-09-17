class ArticleCard {
  String author;
  String authorProfileImage;
  String title;
  DateTime dateOfPublish;
  DateTime dateOfLastRead;
  bool isSelectedForYouArticle;
  bool withStarEmoji;
  String articleImage;
  List<String> tags;
  ArticleCard({
    required this.author,
    required this.title,
    required this.dateOfPublish,
    required this.dateOfLastRead,
    required this.isSelectedForYouArticle,
    required this.articleImage,
    required this.authorProfileImage,
    required this.tags,
    required this.withStarEmoji,
  });
}
