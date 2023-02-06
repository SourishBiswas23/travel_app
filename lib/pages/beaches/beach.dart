import 'package:flutter/material.dart';
import 'package:simplem_solutions_assignment/pages/beaches/components/rating_bar.dart';

import 'components/background_image.dart';
import 'components/beach_description.dart';
import 'components/beach_name_and_location.dart';
import 'components/price_and_book_now_button.dart';

class Beach extends StatelessWidget {
  const Beach({required this.imagePath, required this.beachName, super.key});
  final String beachName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(imagePath: imagePath),
          Container(
            constraints: const BoxConstraints.expand(),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      const Icon(Icons.favorite_outline, color: Colors.white),
                    ],
                  ),
                ),
                const Spacer(),
                BeachNameAndLocation(beachName: beachName),
                const SizedBox(height: 20),
                const BeachDescription(),
                const SizedBox(height: 20),
                const RatingBar(rating: 4.8),
                const SizedBox(height: 30),
                const PriceAndBookNowButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
