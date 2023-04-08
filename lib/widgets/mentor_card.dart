import 'package:flutter/material.dart';
import 'package:hackathon_april/screens/mentor_screen.dart';

import '../providers/mentor.dart';

class MentorCard extends StatelessWidget {
  Mentor mentor;

  MentorCard({super.key, required this.mentor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => MentorScreen(mentor: mentor)));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.125,
        width: MediaQuery.of(context).size.width * 0.425,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: mentor.subject == 'ICT' ? Colors.blue : Colors.orange,
        ),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${mentor.name}\n${mentor.surname}',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            Column(
              children: [
                TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.star, color: Colors.yellow),
                  label: Text(
                    mentor.stars.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(mentor.subject,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white, fontSize: 18))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
