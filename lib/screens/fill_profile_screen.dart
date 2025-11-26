import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class FillProfileScreen extends StatelessWidget {
  final bool isFilled;

  const FillProfileScreen({
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
        title: const Text(
          'Fill your Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 24),
              // Profile Picture
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isFilled ? const Color(0xFFE0E0E0) : const Color(0xFFF5F5F5),
                    ),
                    child: isFilled
                        ? ClipOval(
                            child: Image.network(
                              'https://i.pravatar.cc/150?img=12',
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: const Color(0xFFE0E0E0),
                                  child: const Icon(
                                    Icons.person,
                                    size: 48,
                                    color: Color(0xFF9E9E9E),
                                  ),
                                );
                              },
                            ),
                          )
                        : const Icon(
                            Icons.camera_alt_outlined,
                            size: 48,
                            color: Color(0xFF9E9E9E),
                          ),
                  ),
                  if (!isFilled)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF2196F3),
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
                  ),
              const SizedBox(height: 40),
              if (isFilled)
                const CustomTextField(
                  label: 'Username',
                  initialValue: 'alvinstrans',
                )
              else
                const CustomTextField(
                  label: 'Full name',
                ),
              const SizedBox(height: 24),
              const CustomTextField(
                label: 'Email address',
                hintText: 'example@yourmail.com',
                initialValue: null,
              ),
              const SizedBox(height: 24),
              const CustomTextField(
                label: 'Phone number',
                hintText: '+62-8421-000-2620',
                initialValue: null,
              ),
              if (isFilled) ...[
                const SizedBox(height: 24),
                const CustomTextField(
                  label: 'Full name',
                  initialValue: 'Alvin Trans',
                ),
              ],
              const SizedBox(height: 40),
              const PrimaryButton(text: 'Next'),
            ],
          ),
        ),
      ),
    );
  }
}

