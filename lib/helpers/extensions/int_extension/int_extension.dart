extension intExtension on int {
  String toStringWithWord({
    required String pluralWordOfObject,
    required String singularWordOfObject,
  }) {
    late String afterWordToShow;
    if (this == 0) {
      afterWordToShow = 'No $pluralWordOfObject yet';
    } else if (this == 1) {
      afterWordToShow = '$this $singularWordOfObject';
    } else if (this > 1) {
      afterWordToShow = '$this $pluralWordOfObject';
    } else {
      afterWordToShow = 'No $pluralWordOfObject yet';
    }
    return afterWordToShow;
  }
}
