import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/topic_chip.dart';
import '../widgets/news_card.dart';
import '../widgets/bottom_navigation.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const SearchBarWidget(hintText: 'Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Color(0xFF000000)),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Popular Topics Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Popular Topic',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2196F3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildTopicCard('Health', Icons.favorite, false),
                        const SizedBox(width: 12),
                        _buildTopicCard('Technology', Icons.settings, true),
                        const SizedBox(width: 12),
                        _buildTopicCard('Art', Icons.palette, true),
                        const SizedBox(width: 12),
                        _buildTopicCard('Politics', Icons.account_balance, false),
                        const SizedBox(width: 12),
                        _buildTopicCard('Sport', Icons.sports_soccer, false),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Popular News Card
                  const NewsCard(
                    title: 'Russian warship: Moskva sinks in Black Sea',
                    source: 'BBC News',
                    time: '4 days ago',
                    isLarge: true,
                  ),
                ],
              ),
            ),
          ),
          const CustomBottomNavigation(selectedIndex: 1),
        ],
      ),
    );
  }

  Widget _buildTopicCard(String topic, IconData icon, bool isSaved) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFF5F5F5),
            ),
            child: Icon(icon, color: const Color(0xFF2196F3), size: 24),
          ),
          const SizedBox(height: 8),
          Text(
            topic,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: isSaved ? Colors.white : const Color(0xFF2196F3),
                foregroundColor: isSaved ? const Color(0xFF2196F3) : Colors.white,
                side: BorderSide(
                  color: isSaved ? const Color(0xFF2196F3) : Colors.transparent,
                ),
                padding: const EdgeInsets.symmetric(vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                isSaved ? 'Saved' : 'Save',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

