import 'package:flutter/material.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({super.key});

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
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Color(0xFF000000)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF000000)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Source and time
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'BBC News',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '1 min ago',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF2196F3)),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Following',
                      style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Article Image
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xFFE0E0E0),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 64, color: Color(0xFF9E9E9E)),
              ),
            ),
            // Article Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Ukraine\'s President Zelensky to BBC: Blood money being paid for Russian oil',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                  height: 1.4,
                ),
              ),
            ),
            // Article Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Ukrainian President Volodymyr Zelensky has singled out Germany and Hungary for blocking efforts to embargo energy imports from Russia, accusing them of putting their economies ahead of punishing Russia for its invasion of Ukraine.\n\n'
                'In an interview with the BBC, Mr Zelensky said some countries were still putting their economies ahead of security, and that Russian energy exports were "blood money".\n\n'
                'Germany has said it is working to reduce its dependence on Russian energy, but that an immediate embargo would cause mass unemployment and poverty.\n\n'
                'Hungary, which is heavily dependent on Russian oil and gas, has said it will not support sanctions on energy imports.\n\n'
                'Mr Zelensky said the West needed to show "courage" and stop buying Russian energy, even if it meant economic hardship.',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
            IconButton(
              icon: const Icon(Icons.bookmark_outline, color: Color(0xFF000000)),
              onPressed: () {},
            ),
            const Spacer(),
            Row(
              children: [
                const Text(
                  '24.5K',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.comment_outlined, color: Color(0xFF000000)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

