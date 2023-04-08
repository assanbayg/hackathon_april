import 'package:flutter/material.dart';
import 'package:hackathon_april/widgets/chart.dart';

import '../providers/mentor.dart';

class MentorScreen extends StatelessWidget {
  Mentor mentor;
  MentorScreen({super.key, required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${mentor.name}\n${mentor.surname}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        mentor.subject,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Icon(Icons.account_circle_rounded,
                      size: 150, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star_rounded,
                          size: 100, color: Colors.yellow),
                      Text(mentor.stars.toString(),
                          style: Theme.of(context).textTheme.headlineLarge!),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.cases_rounded,
                          size: 100, color: Colors.white),
                      Text('${mentor.lessons} lessons in month',
                          style: Theme.of(context).textTheme.headlineSmall!),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Telegram profile: @teacher_innovator\n'),
                      Text(
                          'I worked in NIS CBD and enjoy skiing and assisting projects.'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
