extension AdditionalStringMethods on String {
  String firstLettersToCapital() {
    String formattedText = this.toLowerCase().trim();

    if (formattedText.isEmpty) return formattedText;
    List<String> words = formattedText
        .split(' ')
        .map(
          (word) => word.trim(),
        )
        .toList();

    List<String> capitalizedFirstLetters = words.map((String word) {
      return word.substring(0, 1).toUpperCase() +
          word.substring(1).toLowerCase();
    }).toList();

    //
    return capitalizedFirstLetters.join(' ');
  }
}
