import 'package:flutter/material.dart';

class TopicChip extends StatelessWidget {
  final String text;
  final bool isSelected;

  const TopicChip({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF2196F3) : Colors.white,
        border: Border.all(
          color: isSelected ? const Color(0xFF2196F3) : const Color(0xFF2196F3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isSelected ? Colors.white : const Color(0xFF2196F3),
        ),
      ),
    );
  }
}

