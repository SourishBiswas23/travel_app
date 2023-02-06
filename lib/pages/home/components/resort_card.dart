import 'package:flutter/material.dart';

import 'resort_details.dart';
import 'resort_image.dart';

class ResortCard extends StatelessWidget {
  const ResortCard({
    super.key,
    required this.resortImagePath,
    required this.resortName,
    required this.price,
  });

  final String price;
  final String resortImagePath;
  final String resortName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ResortImage(resortImagePath: resortImagePath),
          ResortDetails(resortName: resortName, price: price),
        ],
      ),
    );
  }
}
