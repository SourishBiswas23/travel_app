import 'package:flutter/material.dart';

class BeachNameAndLocation extends StatelessWidget {
  const BeachNameAndLocation({
    super.key,
    required this.beachName,
  });

  final String beachName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          beachName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey.shade500,
            ),
            Text(
              'Goa, India',
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ],
        )
      ],
    );
  }
}
