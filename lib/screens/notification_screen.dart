import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notification',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF000000),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF000000)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const Text(
                  'Today, April 22',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 16),
                _buildNotificationItem(
                  'Modelyn Boris is now following you',
                  hasFollowButton: true,
                ),
                const SizedBox(height: 12),
                _buildNotificationItem(
                  'Omar Moradi comment to your post',
                  hasFollowButton: true,
                ),
                const SizedBox(height: 12),
                _buildNotificationItem(
                  'CNN has posted new news',
                  isNewsSource: true,
                ),
                const SizedBox(height: 32),
                const Text(
                  'Yesterday, April 21',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 16),
                _buildNotificationItem(
                  'Sarah Johnson is now following you',
                  hasFollowButton: true,
                ),
                const SizedBox(height: 12),
                _buildNotificationItem(
                  'BBC News has posted new news',
                  isNewsSource: true,
                ),
                const SizedBox(height: 12),
                _buildNotificationItem(
                  'John Doe liked your comment',
                  hasFollowButton: false,
                ),
              ],
            ),
          ),
          const CustomBottomNavigation(selectedIndex: 3),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(
    String message, {
    bool hasFollowButton = false,
    bool isNewsSource = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFF5F5F5),
            ),
            child: isNewsSource
                ? const Icon(Icons.newspaper, color: Color(0xFF2196F3))
                : const Icon(Icons.person, color: Color(0xFF9E9E9E)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF000000),
              ),
            ),
          ),
          if (hasFollowButton)
            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2196F3),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  '+ Follow',
                  style: TextStyle(
                    fontSize: 12,
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

