import 'package:flutter/material.dart';

import 'beach_rating.dart';
import 'gradient_container.dart';

class BeachCard extends StatelessWidget {
  const BeachCard({
    super.key,
    required this.beachImagePath,
    required this.beachName,
    required this.isSelected,
    required this.beachLocation,
    required this.rating,
  });

  final double rating;
  final String beachLocation;
  final String beachImagePath;
  final String beachName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 200,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(beachImagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          const GradientContainer(),
          Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: isSelected
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Colors.pink,
                              size: 15,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                              size: 15,
                            ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      beachName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(Icons.location_on_outlined, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(
                    beachLocation,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: BeachRating(rating: rating),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
