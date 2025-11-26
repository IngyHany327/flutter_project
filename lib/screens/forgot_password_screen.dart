import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final bool isFilled;

  const ForgotPasswordScreen({
    super.key,
    this.isFilled = false,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Don\'t worry it happens. Please enter the email address associated with your account.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'Email address',
                hintText: 'example@yourmail.com',
                initialValue: isFilled ? 'example@yourmail.com' : null,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                label: 'Phone number',
                hintText: '+62-8421-000-2620',
              ),
              const SizedBox(height: 40),
              const PrimaryButton(text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}

