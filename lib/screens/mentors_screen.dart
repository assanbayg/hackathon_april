import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/mentor.dart';
import '../widgets/mentor_card.dart';

class MentorsScreen extends StatelessWidget {
  const MentorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mentors = Provider.of<MentorList>(context).mentors;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text('3 mentors match',
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 150),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: ListView.builder(
                  itemCount: mentors.length,
                  itemBuilder: (context, index) =>
                      MentorCard(mentor: mentors[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
