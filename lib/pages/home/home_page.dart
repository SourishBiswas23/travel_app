import 'package:flutter/material.dart';

import 'components/beach_card_builder.dart';
import 'components/categories.dart';
import 'components/category_and_package_label.dart';
import 'components/resort_card_builder.dart';
import 'components/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: CircleAvatar(backgroundColor: Colors.grey.shade300),
        ),
        title: const Text(
          'Hello, Vineetha',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Where do you want to explore today?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const SearchField(),
              const SizedBox(height: 30),
              const CategoryAndPackageLabel(label: 'Choose Category'),
              const SizedBox(height: 10),
              const Categories(),
              const SizedBox(height: 20),
              const BeachCardBuilder(),
              const SizedBox(height: 30),
              const CategoryAndPackageLabel(label: 'Popular Package'),
              const SizedBox(height: 30),
              ...resortCardBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
