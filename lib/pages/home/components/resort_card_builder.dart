import 'package:flutter/material.dart';

import '../constants/resort.dart';
import 'resort_card.dart';

List<Widget> resortCardBuilder() {
  return [
    for (var index = 0; index < 2; ++index)
      ResortCard(
        resortImagePath: resortInfo[index]['image'] as String,
        resortName: resortInfo[index]['name'] as String,
        price: resortInfo[index]['price'] as String,
      )
  ];
}
