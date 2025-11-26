import 'package:flutter/material.dart';
import 'onboarding_logo_screen.dart';
import 'onboarding_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'forgot_password_screen.dart';
import 'otp_verification_screen.dart';
import 'reset_password_screen.dart';
import 'congratulations_screen.dart';
import 'select_country_screen.dart';
import 'topics_screen.dart';
import 'news_source_screen.dart';
import 'fill_profile_screen.dart';
import 'homepage_screen.dart';
import 'trending_screen.dart';
import 'notification_screen.dart';
import 'search_screen.dart';
import 'author_profile_screen.dart';
import 'explore_screen.dart';
import 'bookmark_screen.dart';
import 'article_detail_screen.dart';
import 'comments_screen.dart';

class DemoNavigationScreen extends StatelessWidget {
  const DemoNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Navigation'),
        backgroundColor: const Color(0xFF2196F3),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Onboarding Screens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Logo Screen',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OnboardingLogoScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Onboarding 1',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OnboardingScreen(pageIndex: 0)),
            ),
          ),
          _buildNavButton(
            context,
            'Onboarding 2',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OnboardingScreen(pageIndex: 1)),
            ),
          ),
          _buildNavButton(
            context,
            'Onboarding 3',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OnboardingScreen(pageIndex: 2)),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Login Screens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Login',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Login (Filled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen(isFilled: true)),
            ),
          ),
          _buildNavButton(
            context,
            'Login (Error)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen(showError: true)),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Signup Screens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Signup',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SignupScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Signup (Filled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SignupScreen(isFilled: true)),
            ),
          ),
          _buildNavButton(
            context,
            'Signup (Error)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SignupScreen(showError: true)),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Password Recovery',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Forgot Password',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Forgot Password (Filled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ForgotPasswordScreen(isFilled: true)),
            ),
          ),
          _buildNavButton(
            context,
            'OTP Verification',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OTPVerificationScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'OTP Verification (Filled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OTPVerificationScreen(isFilled: true, otpCode: '4872')),
            ),
          ),
          _buildNavButton(
            context,
            'OTP Verification (Error)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OTPVerificationScreen(hasError: true, otpCode: '4872')),
            ),
          ),
          _buildNavButton(
            context,
            'Reset Password',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ResetPasswordScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Congratulations',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CongratulationsScreen()),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Onboarding Flow',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Select Country',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SelectCountryScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Select Country (Search)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SelectCountryScreen(isSearching: true, searchQuery: 'Indonesia')),
            ),
          ),
          _buildNavButton(
            context,
            'Topics',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TopicsScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'News Source',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const NewsSourceScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Fill Profile',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const FillProfileScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Fill Profile (Filled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const FillProfileScreen(isFilled: true)),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Main App Screens',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2196F3),
            ),
          ),
          const SizedBox(height: 8),
          _buildNavButton(
            context,
            'Homepage',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HomepageScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Homepage (Scrolled)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HomepageScreen(isScrolled: true)),
            ),
          ),
          _buildNavButton(
            context,
            'Trending',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TrendingScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Notification',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const NotificationScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Search (News)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen(selectedTab: 0)),
            ),
          ),
          _buildNavButton(
            context,
            'Search (Topics)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen(selectedTab: 1)),
            ),
          ),
          _buildNavButton(
            context,
            'Search (Author)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen(selectedTab: 2)),
            ),
          ),
          _buildNavButton(
            context,
            'Author Profile',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AuthorProfileScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Explore',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ExploreScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Bookmark',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BookmarkScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Article Detail',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ArticleDetailScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Comments',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CommentsScreen()),
            ),
          ),
          _buildNavButton(
            context,
            'Comments (Active)',
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CommentsScreen(isActive: true)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

