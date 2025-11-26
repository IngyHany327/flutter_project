import 'package:flutter/material.dart';

class CountryListItem extends StatelessWidget {
  final String countryName;
  final String flagEmoji;
  final bool isSelected;

  const CountryListItem({
    super.key,
    required this.countryName,
    required this.flagEmoji,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          Text(
            flagEmoji,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              countryName,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Radio<bool>(
            value: true,
            groupValue: isSelected,
            onChanged: (value) {},
            activeColor: const Color(0xFF2196F3),
          ),
        ],
      ),
    );
  }
}

