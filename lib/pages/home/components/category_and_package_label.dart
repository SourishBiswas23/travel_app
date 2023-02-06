import 'package:flutter/material.dart';

class CategoryAndPackageLabel extends StatelessWidget {
  const CategoryAndPackageLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          'See all',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
