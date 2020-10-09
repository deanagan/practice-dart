library stressful_subject;

class SubjectAnalyzer {
  bool isStressful(String subject) {
    if (subject.endsWith('!!!') || (subject == subject.toUpperCase())) {
      return true;
    }

    const redWords = ["help", "urgent", "asap"];

    final cleanSubject = [...subject.toLowerCase().split('')].reduce(
        (value, element) => value.endsWith(element) ? value : value + element);

    return redWords.any((element) => cleanSubject.contains(element));
  }
}
