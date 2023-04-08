import 'package:flutter/material.dart';
import '../widgets/search_card.dart';
import '../widgets/course_card.dart';

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
                      CourseCard(
                        color: Colors.blue,
                        subjectName: 'ICT',
                      ),
                      CourseCard(
                        color: Colors.purple,
                        subjectName: 'Chemistry',
                      ),
                      CourseCard(
                        color: Colors.green,
                        subjectName: 'Biology',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CourseCard(
                        color: Colors.indigo,
                        subjectName: 'Physics',
                      ),
                      CourseCard(
                        color: Colors.orange,
                        subjectName: 'Kazakh History',
                      ),
                      CourseCard(
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
