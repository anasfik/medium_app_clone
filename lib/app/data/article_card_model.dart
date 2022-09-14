class ArticleCardModel {
  String author;
  String authorProfileImage;
  String title;
  DateTime dateOfPublish;
  DateTime dateOfLastRead;
  bool isSelectedForYouArticle;
  String articleImage;

  ArticleCardModel({
    required this.author,
    required this.title,
    required this.dateOfPublish,
    required this.dateOfLastRead,
    required this.isSelectedForYouArticle,
    required this.articleImage,
    required this.authorProfileImage,
  });
}
