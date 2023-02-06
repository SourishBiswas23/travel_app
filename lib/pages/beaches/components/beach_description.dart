import 'package:flutter/material.dart';

class BeachDescription extends StatelessWidget {
  const BeachDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
      style: TextStyle(color: Colors.grey.shade500),
    );
  }
}
