import 'package:flutter/material.dart';

class OTPInputField extends StatelessWidget {
  final String? value;
  final bool hasError;
  final bool isFilled;

  const OTPInputField({
    super.key,
    this.value,
    this.hasError = false,
    this.isFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor = const Color(0xFFE0E0E0);
    Color textColor = const Color(0xFF000000);
    
    if (hasError) {
      borderColor = const Color(0xFFE53935);
      textColor = const Color(0xFFE53935);
    } else if (isFilled) {
      borderColor = const Color(0xFF2196F3);
      textColor = const Color(0xFF000000);
    }

    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          value ?? '',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

