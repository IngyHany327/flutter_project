import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool isPassword;
  final bool showError;
  final String? errorMessage;
  final String? initialValue;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  const CustomTextField({
    super.key,
    required this.label,
    this.hintText,
    this.isPassword = false,
    this.showError = false,
    this.errorMessage,
    this.initialValue,
    this.obscureText = true,
    this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          obscureText: isPassword && obscureText,
          style: TextStyle(
            color: showError ? const Color(0xFFE53935) : const Color(0xFF000000),
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: showError ? const Color(0xFFE53935) : const Color(0xFF9E9E9E),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: showError ? const Color(0xFFE53935) : const Color(0xFFE0E0E0),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: showError ? const Color(0xFFE53935) : const Color(0xFFE0E0E0),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: showError ? const Color(0xFFE53935) : const Color(0xFF2196F3),
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFE53935),
                width: 1,
              ),
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      color: const Color(0xFF9E9E9E),
                    ),
                    onPressed: onToggleVisibility,
                  )
                : showError
                    ? const Icon(
                        Icons.close,
                        color: Color(0xFFE53935),
                        size: 20,
                      )
                    : null,
          ),
        ),
        if (showError && errorMessage != null) ...[
          const SizedBox(height: 4),
          Text(
            errorMessage!,
            style: const TextStyle(
              color: Color(0xFFE53935),
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}

