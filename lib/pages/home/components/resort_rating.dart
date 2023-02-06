import 'package:flutter/material.dart';

class ResortRating extends StatelessWidget {
  const ResortRating({required this.rating, super.key});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; ++i,) stars(i),
        const SizedBox(width: 10),
        Text(
          rating.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Icon stars(int i) {
    return Icon(
      Icons.star_rounded,
      color: i < rating - 1 ? Colors.amber : Colors.grey.shade300,
      size: 15,
    );
  }
}
