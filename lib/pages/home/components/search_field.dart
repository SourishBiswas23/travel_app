import 'package:flutter/material.dart';

import 'text_field_border.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: circularBordersWithNoThickness,
        focusedBorder: circularBordersWithNoThickness,
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
