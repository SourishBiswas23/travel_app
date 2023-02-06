import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({required this.rating, super.key});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 5; ++i,) stars(i),
        const SizedBox(width: 10),
        Text(
          rating.toString(),
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Icon stars(int i) {
    return Icon(
      Icons.star_rounded,
      color: i < rating - 1 ? Colors.amber : Colors.white,
    );
  }
}
