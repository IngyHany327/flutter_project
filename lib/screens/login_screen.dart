import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  final bool showError;
  final bool isFilled;
  final bool obscurePassword;

  const LoginScreen({
    super.key,
    this.showError = false,
    this.isFilled = false,
    this.obscurePassword = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Greeting
              const Text(
                'Hello',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2196F3),
                ),
              ),
              const Text(
                'Again!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 40),
              // Username field
              CustomTextField(
                label: 'Username*',
                hintText: showError ? 'input text' : null,
                initialValue: isFilled ? 'input text' : null,
                showError: showError,
                errorMessage: showError ? 'Invalid username' : null,
              ),
              const SizedBox(height: 24),
              // Password field
              CustomTextField(
                label: 'Password*',
                isPassword: true,
                initialValue: isFilled ? 'password' : null,
                obscureText: obscurePassword,
                onToggleVisibility: () {},
              ),
              const SizedBox(height: 16),
              // Remember me and Forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: const Color(0xFF2196F3),
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot the password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF2196F3),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Login button
              const PrimaryButton(text: 'Login'),
              const SizedBox(height: 24),
              // Divider
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text(
                      'or continue with',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 24),
              // Social buttons
              Row(
                children: [
                  SocialButton(
                    text: 'Facebook',
                    iconAsset: 'facebook',
                  ),
                  const SizedBox(width: 16),
                  SocialButton(
                    text: 'Google',
                    iconAsset: 'google',
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Sign up link
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF2196F3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

