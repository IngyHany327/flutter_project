import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/news_card.dart';
import '../widgets/bottom_navigation.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

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
            icon: const Icon(Icons.filter_list, color: Color(0xFF000000)),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                NewsCard(
                  title: 'Ukraine\'s President Zelensky to BBC: Blood money being paid for Russian oil',
                  source: 'BBC News',
                  time: '1 min ago',
                ),
                NewsCard(
                  title: 'Her train broke down, her phone died. And then she met her...',
                  source: 'CNN',
                  time: '2h ago',
                ),
                NewsCard(
                  title: 'Russian warship: Moskva sinks in Black Sea',
                  source: 'BBC News',
                  time: '3h ago',
                ),
                NewsCard(
                  title: 'Wind power produces more electricity than coal and nuc...',
                  source: 'Reuters',
                  time: '4h ago',
                ),
                NewsCard(
                  title: 'We keep trying to save churches: For churches hit...',
                  source: 'CNN',
                  time: '5h ago',
                ),
              ],
            ),
          ),
          const CustomBottomNavigation(selectedIndex: 2),
        ],
      ),
    );
  }
}

