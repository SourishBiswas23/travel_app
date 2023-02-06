import 'package:flutter/material.dart';

import 'resort_rating.dart';

class ResortDetails extends StatelessWidget {
  const ResortDetails({
    super.key,
    required this.resortName,
    required this.price,
  });

  final String price;
  final String resortName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 198,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  resortName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Icon(
                  Icons.favorite_outline_rounded,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(color: Colors.orange.shade900),
          ),
          const SizedBox(height: 5),
          const ResortRating(rating: 4.8),
          const SizedBox(height: 5),
          const SizedBox(
            width: 198,
            child: Text(
              'A resort is a place used for vacation, relaxation or as a day...',
            ),
          ),
        ],
      ),
    );
  }
}
