import 'package:flutter/material.dart';
import 'package:simplem_solutions_assignment/pages/home/constants/categories.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < 2; ++i)
          CatetoryCard(
            iconPath: categoriesInfo[i]['imagePath'] as String,
            iconLabel: categoriesInfo[i]['label'] as String,
            isSelected: (i == 0),
          ),
      ],
    );
  }
}
