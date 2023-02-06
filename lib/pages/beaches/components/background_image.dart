import 'package:flutter/material.dart';

Container BackgroundImage({required String imagePath}) {
  return Container(
    constraints: const BoxConstraints.expand(),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
