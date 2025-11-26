import 'package:flutter/material.dart';
import '../widgets/news_source_card.dart';
import '../widgets/primary_button.dart';

class NewsSourceScreen extends StatelessWidget {
  const NewsSourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newsSources = [
      {'name': 'CNBC', 'following': false},
      {'name': 'VICE', 'following': false},
      {'name': 'VOX', 'following': true},
      {'name': 'BBC News', 'following': true},
      {'name': 'SCMP', 'following': false},
      {'name': 'CNN', 'following': true},
      {'name': 'HBN', 'following': false},
      {'name': 'CNET', 'following': false},
      {'name': 'USA Today', 'following': true},
      {'name': 'TIME', 'following': false},
      {'name': 'M', 'following': false},
    ];

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
          'Choose your News Source',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Color(0xFF9E9E9E)),
                filled: true,
                fillColor: const Color(0xFFF5F5F5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemCount: newsSources.length,
                itemBuilder: (context, index) {
                  final source = newsSources[index];
                  return NewsSourceCard(
                    sourceName: source['name'] as String,
                    isFollowing: source['following'] as bool,
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
    );
  }
}

