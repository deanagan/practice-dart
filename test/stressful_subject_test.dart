/*
The function should recognise if a subject line is stressful. A stressful subject line means
that all letters are in uppercase, and/or ends by at least 3 exclamation marks, and/or contains at
least one of the following “red” words:
    "help",
    "asap",
    "urgent".

Any of those "red" words can be
spelled in different ways - "HELP", "help", "HeLp", "H!E!L!P!", "H-E-L-P", even in a very
loooong way "HHHEEEEEEEEELLP," they just can't have any other letters interspersed between them.

Input: Subject line as a string.
Output: Boolean.

Precondition: Subject can be up to 100 letters
*/

import "package:test/test.dart";
import "../lib/stressful_subject.dart";

class TestParameter {
  String subject;
  bool isStressful;

  TestParameter(this.subject, this.isStressful);

  @override
  String toString() {
    return """
        The subject: $subject is ${isStressful ? 'stressful' : 'NOT stressful'}
        """;
  }
}

void main() {
  group("Stressful subjects should return true:", () {
    List<TestParameter> testParameters = [
      new TestParameter("Hi", false),
      new TestParameter("HELP", true),
      new TestParameter("What is this!!!", true),
      new TestParameter("I neeed HELP", true),
      new TestParameter("asap help", true),
      new TestParameter("UUUURGGGEEEEENT here", true),
      new TestParameter("Hello!Please", false),
      new TestParameter("Hello!!", false),
    ];

    testParameters.forEach((tp) {
      test("Subject: ${tp.subject} should return ${tp.isStressful}", () {
        // Arrange
        var sut = new SubjectAnalyzer();
        // Acts
        final result = sut.isStressful(tp.subject);
        // Asserts
        expect(result, tp.isStressful);
      });
    });
  });
}
