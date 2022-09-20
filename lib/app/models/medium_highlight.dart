class Highlight {
  Highlight({
    required this.image,
    required this.cornerName,
    required this.title,
    required this.dateOfPublish,
    required this.dateOfLastRead,
  });
  DateTime dateOfLastRead;

  String cornerName;

  String title;

  DateTime dateOfPublish;

  String image;
}
