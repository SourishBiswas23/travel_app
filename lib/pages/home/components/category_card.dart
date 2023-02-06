import 'package:flutter/material.dart';

class CatetoryCard extends StatelessWidget {
  const CatetoryCard({
    super.key,
    required this.iconPath,
    required this.iconLabel,
    required this.isSelected,
  });

  final bool isSelected;
  final String iconPath;
  final String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? Colors.green : Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              iconPath,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            iconLabel,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
