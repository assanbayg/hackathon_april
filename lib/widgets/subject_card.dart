import 'package:flutter/material.dart';

import '../screens/mentors_screen.dart';

class SubjectCard extends StatelessWidget {
  String subjectName;
  Color color;

  SubjectCard({super.key, required this.subjectName, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => MentorsScreen()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.125,
        width: MediaQuery.of(context).size.width * 0.425,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          subjectName,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
