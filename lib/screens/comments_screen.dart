import 'package:flutter/material.dart';
import '../widgets/comment_item.dart';

class CommentsScreen extends StatelessWidget {
  final bool isActive;

  const CommentsScreen({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
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
          'Comments',
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                CommentItem(
                  userName: 'Wilson Franci',
                  commentText: 'Lorem ipsum is simply dummy text of the printing and typesetting industry.',
                  time: '4h',
                ),
                CommentItem(
                  userName: 'Madelyn Sants',
                  commentText: 'Great article! Very informative.',
                  time: '23 min ago',
                ),
                CommentItem(
                  userName: 'Marley Botosh',
                  commentText: 'I completely agree with this perspective.',
                  time: '1h',
                  repliesCount: 5,
                ),
                CommentItem(
                  userName: 'Aileen Septimus',
                  commentText: 'This is an important topic that needs more attention.',
                  time: '2h',
                ),
                CommentItem(
                  userName: 'Omer Harwitz',
                  commentText: 'Thanks for sharing this information.',
                  time: '3h',
                  repliesCount: 2,
                ),
                CommentItem(
                  userName: 'Carey Caleb',
                  commentText: 'Looking forward to more updates on this.',
                  time: '4h',
                ),
              ],
            ),
          ),
          // Comment Input
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: isActive
                      ? TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'Type your comment',
                            hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
                            filled: true,
                            fillColor: const Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text(
                            'Type your comment',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2196F3),
                  ),
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

