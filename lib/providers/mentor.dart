import 'package:flutter/foundation.dart';

class Mentor with ChangeNotifier {
  String name;
  String surname;
  String subject;
  double stars;
  int lessons;

  Mentor(
    this.name,
    this.surname,
    this.subject,
    this.stars,
    this.lessons,
  );
}

class MentorList with ChangeNotifier {
  final List<Mentor> mentors = [
    Mentor('Makpal', 'Mukanova', 'ICT', 4.7, 13),
    Mentor('Aidana', 'Batyrkhanova', 'ICT', 4.4, 41),
    Mentor('Yasynzhan', 'Shaqan', 'ICT', 4.8, 13),
  ];

  List<Mentor> getMentorList() => [...mentors];
  final List<Mentor> favMentors = [
    Mentor('Kibash', 'Kaparova', 'Kazakh History', 5, 14),
  ];

  List<Mentor> getFavMentorList() => [...favMentors];
}
