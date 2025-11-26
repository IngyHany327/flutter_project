import 'package:flutter/material.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/news_card.dart';
import '../widgets/topic_search_item.dart';
import '../widgets/author_search_item.dart';

class SearchScreen extends StatelessWidget {
  final int selectedTab;
  final String? searchQuery;

  const SearchScreen({
    super.key,
    this.selectedTab = 0,
    this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SearchBarWidget(
          hintText: 'Input text',
          initialValue: searchQuery,
          showClearButton: true,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          CustomTabBar(selectedIndex: selectedTab),
          Expanded(
            child: _buildContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    switch (selectedTab) {
      case 0: // News
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            NewsCard(
              title: 'Ukraine\'s President Zelensky to BBC: Blood money being paid for Russian oil',
              source: 'BBC News',
              time: '1 min ago',
            ),
            NewsCard(
              title: 'Russian warship: Moskva sinks in Black Sea',
              source: 'BBC News',
              time: '2h ago',
            ),
            NewsCard(
              title: 'Her train broke down, her phone died. And then she met her...',
              source: 'CNN',
              time: '3h ago',
            ),
            NewsCard(
              title: 'Tech giant announces new AI breakthrough',
              source: 'CNBC',
              time: '4h ago',
            ),
            NewsCard(
              title: 'Climate change: New study reveals impact',
              source: 'Reuters',
              time: '5h ago',
            ),
          ],
        );
      case 1: // Topics
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TopicSearchItem(
              topicName: 'Health',
              description: 'Get energizing workout',
              icon: Icons.favorite,
              isSaved: false,
            ),
            TopicSearchItem(
              topicName: 'Technology',
              description: 'The latest news',
              icon: Icons.settings,
              isSaved: true,
            ),
            TopicSearchItem(
              topicName: 'Art',
              description: 'The art newspaper',
              icon: Icons.palette,
              isSaved: true,
            ),
            TopicSearchItem(
              topicName: 'Politics',
              description: 'Political updates',
              icon: Icons.account_balance,
              isSaved: false,
            ),
            TopicSearchItem(
              topicName: 'Sport',
              description: 'Sports news',
              icon: Icons.sports_soccer,
              isSaved: false,
            ),
            TopicSearchItem(
              topicName: 'Travel',
              description: 'Travel guides',
              icon: Icons.flight,
              isSaved: false,
            ),
            TopicSearchItem(
              topicName: 'Money',
              description: 'Financial news',
              icon: Icons.attach_money,
              isSaved: false,
            ),
          ],
        );
      case 2: // Author
        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            AuthorSearchItem(
              authorName: 'BBC News',
              followers: '1.2M',
              isFollowing: true,
            ),
            AuthorSearchItem(
              authorName: 'CNN',
              followers: '89.2K',
              isFollowing: true,
            ),
            AuthorSearchItem(
              authorName: 'VOX',
              followers: '45.3K',
              isFollowing: false,
            ),
            AuthorSearchItem(
              authorName: 'USA Today',
              followers: '234.5K',
              isFollowing: true,
            ),
            AuthorSearchItem(
              authorName: 'CNET',
              followers: '67.8K',
              isFollowing: false,
            ),
            AuthorSearchItem(
              authorName: 'MSN',
              followers: '123.4K',
              isFollowing: false,
            ),
          ],
        );
      default:
        return const SizedBox();
    }
  }
}

