import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  final int pageIndex;

  const OnboardingScreen({
    super.key,
    required this.pageIndex,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Image/Illustration section
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: const Color(0xFFF5F5F5),
                child: _buildIllustration(),
              ),
            ),
            // Content section
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lorem Ipsum is simply dummy',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                        height: 1.5,
                      ),
                    ),
                    const Spacer(),
                    // Navigation dots and buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Back button (hidden on first page)
                        if (widget.pageIndex > 0)
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: Color(0xFF2196F3),
                                fontSize: 16,
                              ),
                            ),
                          )
                        else
                          const SizedBox(width: 60),
                        // Dots indicator
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: index == widget.pageIndex
                                    ? const Color(0xFF2196F3)
                                    : const Color(0xFF2196F3).withOpacity(0.2),
                              ),
                            );
                          }),
                        ),
                        // Next/Get Started button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2196F3),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            widget.pageIndex == 2 ? 'Get Started' : 'Next',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIllustration() {
    switch (widget.pageIndex) {
      case 0:
        // 3D illustration with crypto symbols
        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Blue cube with Bitcoin B
              _buildCube(
                color: const Color(0xFF2196F3),
                symbol: 'B',
              ),
              const SizedBox(width: 20),
              // Yellow cube with Tezos tz
              _buildCube(
                color: const Color(0xFFFFC107),
                symbol: 'tz',
              ),
              const SizedBox(width: 20),
              // Purple stairs
              _buildStairs(),
            ],
          ),
        );
      case 1:
        // Temple photo placeholder
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF9E9E9E).withOpacity(0.3),
                const Color(0xFF9E9E9E).withOpacity(0.1),
              ],
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.landscape,
              size: 120,
              color: Color(0xFF9E9E9E),
            ),
          ),
        );
      case 2:
        // Salad jar photo placeholder
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF4CAF50).withOpacity(0.2),
                const Color(0xFF4CAF50).withOpacity(0.1),
              ],
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.restaurant,
              size: 120,
              color: Color(0xFF4CAF50),
            ),
          ),
        );
      default:
        return const SizedBox();
    }
  }

  Widget _buildCube({required Color color, required String symbol}) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          symbol,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildStairs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xFF9C27B0),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xFF9C27B0),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 40,
          height: 20,
          decoration: BoxDecoration(
            color: const Color(0xFF9C27B0),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}

