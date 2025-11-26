import 'package:flutter/material.dart';
import '../widgets/country_list_item.dart';
import '../widgets/primary_button.dart';

class SelectCountryScreen extends StatelessWidget {
  final bool isSearching;
  final String? searchQuery;

  const SelectCountryScreen({
    super.key,
    this.isSearching = false,
    this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    final countries = [
      {'name': 'Afghanistan', 'flag': '🇦🇫'},
      {'name': 'Albania', 'flag': '🇦🇱'},
      {'name': 'Algeria', 'flag': '🇩🇿'},
      {'name': 'Argentina', 'flag': '🇦🇷'},
      {'name': 'Australia', 'flag': '🇦🇺'},
      {'name': 'Brazil', 'flag': '🇧🇷'},
      {'name': 'Canada', 'flag': '🇨🇦'},
      {'name': 'China', 'flag': '🇨🇳'},
      {'name': 'France', 'flag': '🇫🇷'},
      {'name': 'Germany', 'flag': '🇩🇪'},
      {'name': 'India', 'flag': '🇮🇳'},
      {'name': 'Indonesia', 'flag': '🇮🇩'},
      {'name': 'Italy', 'flag': '🇮🇹'},
      {'name': 'Japan', 'flag': '🇯🇵'},
      {'name': 'Malaysia', 'flag': '🇲🇾'},
      {'name': 'Mexico', 'flag': '🇲🇽'},
      {'name': 'Netherlands', 'flag': '🇳🇱'},
      {'name': 'Singapore', 'flag': '🇸🇬'},
      {'name': 'South Korea', 'flag': '🇰🇷'},
      {'name': 'Spain', 'flag': '🇪🇸'},
      {'name': 'Thailand', 'flag': '🇹🇭'},
      {'name': 'United Kingdom', 'flag': '🇬🇧'},
      {'name': 'United States', 'flag': '🇺🇸'},
      {'name': 'Vietnam', 'flag': '🇻🇳'},
    ];

    final filteredCountries = searchQuery != null && searchQuery!.isNotEmpty
        ? countries.where((c) => c['name']!.toLowerCase().contains(searchQuery!.toLowerCase())).toList()
        : countries;

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
          'Select your Country',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Color(0xFF9E9E9E)),
                filled: true,
                fillColor: const Color(0xFFF5F5F5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCountries.length,
              itemBuilder: (context, index) {
                final country = filteredCountries[index];
                final isSelected = isSearching && searchQuery == 'Indonesia' && country['name'] == 'Indonesia';
                return CountryListItem(
                  countryName: country['name']!,
                  flagEmoji: country['flag']!,
                  isSelected: isSelected,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: const PrimaryButton(text: 'Next'),
          ),
        ],
      ),
    );
  }
}

