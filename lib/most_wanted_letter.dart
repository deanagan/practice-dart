library most_wanted_letter;

extension StringCounter on List<String> {
  int countOccurenceInsensitive(String s) {
    return this.where((ch) => ch == s).length;
  }
}

class MostWantedLetter {
  String getMostWanted(String subject) {
    final splitSubject = subject.toLowerCase().split('');
    final counter = new Map.fromIterable(splitSubject,
        key: (item) => item,
        value: (item) => splitSubject.countOccurenceInsensitive(item));
    var mwl = splitSubject.first;
    counter.forEach((k, v) {
      if (counter[mwl] <= v) {
        mwl = k;
      }
    });

    return mwl;
  }
}
