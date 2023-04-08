import 'package:flutter/material.dart';
import '../widgets/search_card.dart';
import '../widgets/subject_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back!', style: theme.textTheme.headlineMedium),
              SizedBox(height: 20),
              SearchCard(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SubjectCard(
                        color: Colors.blue,
                        subjectName: 'ICT',
                      ),
                      SubjectCard(
                        color: Colors.purple,
                        subjectName: 'Chemistry',
                      ),
                      SubjectCard(
                        color: Colors.green,
                        subjectName: 'Biology',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SubjectCard(
                        color: Colors.indigo,
                        subjectName: 'Physics',
                      ),
                      SubjectCard(
                        color: Colors.orange,
                        subjectName: 'Kazakh History',
                      ),
                      SubjectCard(
                        color: Colors.red,
                        subjectName: 'World History',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
