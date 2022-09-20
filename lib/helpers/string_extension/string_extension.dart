extension AdditionalStringMethods on String {
  
  String firstLettersToCapital() {
    // remove extra padding letter spaces
    String formattedText = this.toLowerCase().trim();

    // in case the text is empty
    if (formattedText.isEmpty) return formattedText;

    // split the text into a list of words without spaces
    List<String> words = formattedText
        .split(' ')
        .map(
          (word) => word.trim(),
        )
        .toList();

    // Capitalize first letters of each word
    List<String> capitalizedFirstLetters = words
        .map(
          (word) =>
              word.substring(0, 1).toUpperCase() +
              word.substring(1).toLowerCase(),
        )
        .toList();

    //
    return capitalizedFirstLetters.join(' ');
  }

}