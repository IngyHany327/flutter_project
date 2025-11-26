import 'package:flutter/material.dart';
import '../widgets/otp_input_field.dart';
import '../widgets/primary_button.dart';

class OTPVerificationScreen extends StatelessWidget {
  final bool hasError;
  final bool isFilled;
  final String otpCode;

  const OTPVerificationScreen({
    super.key,
    this.hasError = false,
    this.isFilled = false,
    this.otpCode = '',
  });

  @override
  Widget build(BuildContext context) {
    final digits = otpCode.isEmpty ? '' : otpCode.substring(0, otpCode.length > 4 ? 4 : otpCode.length);
    final otpDigits = digits.split('')..addAll(List.filled(4 - digits.length, ''));

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
                'OTP Verification',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Enter the OTP sent to +62-1234-5678-9',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 40),
              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return OTPInputField(
                    value: index < otpDigits.length ? otpDigits[index] : null,
                    hasError: hasError,
                    isFilled: isFilled && index < otpDigits.length,
                  );
                }),
              ),
              const SizedBox(height: 24),
              Text(
                'Resend code in 59s',
                style: TextStyle(
                  fontSize: 14,
                  color: hasError ? const Color(0xFFE53935) : const Color(0xFF757575),
                ),
              ),
              const SizedBox(height: 40),
              const PrimaryButton(text: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}

