import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final bool showClearButton;

  const SearchBarWidget({
    super.key,
    this.hintText,
    this.initialValue,
    this.showClearButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Color(0xFF9E9E9E)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              initialValue ?? hintText ?? 'Search',
              style: TextStyle(
                fontSize: 16,
                color: initialValue != null ? const Color(0xFF000000) : const Color(0xFF9E9E9E),
              ),
            ),
          ),
          if (showClearButton && initialValue != null)
            IconButton(
              icon: const Icon(Icons.close, size: 20, color: Color(0xFF9E9E9E)),
              onPressed: () {},
            ),
        ],
      ),
    );
  }
}

