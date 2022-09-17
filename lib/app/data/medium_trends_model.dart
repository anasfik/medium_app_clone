class TrendArticle {
  TrendArticle({
    required this.community,
    required this.author,
    required this.title,   
    required this.dateOfPublish,
    required this.dateOfLastRead,
    required this.authorProfileImage,
  });

  String author;
  String authorProfileImage;
  String title;
  DateTime dateOfPublish;
  DateTime dateOfLastRead;
  String community;
}
