import 'package:flutter/material.dart';
import '../widgets/topic_chip.dart';
import '../widgets/primary_button.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topics = [
      'National',
      'International',
      'Lifestyle',
      'Business',
      'Fashion',
      'Technology',
      'Politics',
      'Sport',
      'Health',
      'Art',
      'Science',
    ];

    final selectedTopics = {
      'National',
      'International',
      'Lifestyle',
      'Business',
      'Fashion',
      'Technology',
      'Politics',
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF000000)),
          onPressed: () {},
        ),
        title: const Text(
          'Choose your Topics',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 2.5,
                  ),
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    final topic = topics[index];
                    return TopicChip(
                      text: topic,
                      isSelected: selectedTopics.contains(topic),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const PrimaryButton(text: 'Next'),
            ),
          ],
        ),
      ),
    );
  }
}

