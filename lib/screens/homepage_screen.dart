import 'package:flutter/material.dart';
import '../widgets/news_card.dart';
import '../widgets/bottom_navigation.dart';

class HomepageScreen extends StatelessWidget {
  final bool isScrolled;

  const HomepageScreen({
    super.key,
    this.isScrolled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'K',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text(
                      'a',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2196F3),
                      ),
                    ),
                    Positioned(
                      top: 4,
                      child: Icon(
                        Icons.description_outlined,
                        size: 16,
                        color: const Color(0xFF2196F3).withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'bar',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, color: Color(0xFF000000)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_outlined, color: Color(0xFF000000)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isScrolled) ...[
                    const NewsCard(
                      title: 'Ukraine\'s President Zelenskyy to BBC: Blood money being paid for Russian oil',
                      isLarge: true,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Latest',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  const NewsCard(
                    title: 'Breaking: Major earthquake hits region, emergency services responding',
                    source: 'BBC News',
                    time: '2h ago',
                  ),
                  const NewsCard(
                    title: 'Tech giant announces new AI breakthrough in medical research',
                    source: 'CNN',
                    time: '3h ago',
                  ),
                  const NewsCard(
                    title: 'Sports: Championship final set for next weekend',
                    source: 'ESPN',
                    time: '4h ago',
                  ),
                  const NewsCard(
                    title: 'Economy: Stock market reaches new all-time high',
                    source: 'CNBC',
                    time: '5h ago',
                  ),
                  const NewsCard(
                    title: 'Climate: New study reveals impact of rising temperatures',
                    source: 'Reuters',
                    time: '6h ago',
                  ),
                  const NewsCard(
                    title: 'Entertainment: Award ceremony announces nominees',
                    source: 'Variety',
                    time: '7h ago',
                  ),
                ],
              ),
            ),
          ),
          const CustomBottomNavigation(selectedIndex: 0),
        ],
      ),
    );
  }
}

