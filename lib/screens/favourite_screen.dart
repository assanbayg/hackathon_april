import 'package:flutter/material.dart';
import 'package:hackathon_april/providers/mentor.dart';
import 'package:hackathon_april/widgets/mentor_card.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mentors = Provider.of<MentorList>(context).favMentors;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your favorite mentors',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 15),
              Container(
                child: mentors.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'No mentors yet!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: Colors.grey),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.75,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: mentors.length,
                          itemBuilder: (context, index) =>
                              MentorCard(mentor: mentors[index]),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
