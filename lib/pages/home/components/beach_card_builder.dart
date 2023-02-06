import 'package:flutter/material.dart';
import 'package:simplem_solutions_assignment/pages/beaches/beach.dart';

import '../constants/beach.dart';
import 'beach_card.dart';

class BeachCardBuilder extends StatelessWidget {
  const BeachCardBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Beach(
                  beachName: beachInfo[index]['name'] as String,
                  imagePath: beachInfo[index]['image'] as String,
                ),
              ),
            );
          },
          child: BeachCard(
            beachImagePath: beachInfo[index]['image'] as String,
            beachName: beachInfo[index]['name'] as String,
            beachLocation: beachInfo[index]['location'] as String,
            rating: beachInfo[index]['rating'] as double,
            isSelected: (index == 0),
          ),
        ),
        itemCount: 2,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
