import 'package:flutter/material.dart';

class ResortImage extends StatelessWidget {
  const ResortImage({
    super.key,
    required this.resortImagePath,
  });

  final String resortImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 120,
      width: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          resortImagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
