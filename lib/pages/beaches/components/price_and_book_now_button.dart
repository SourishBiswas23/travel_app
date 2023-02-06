import 'package:flutter/material.dart';

class PriceAndBookNowButton extends StatelessWidget {
  const PriceAndBookNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '₹15,000/person',
          style: TextStyle(color: Colors.white),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 15,
            ),
            child: Text(
              'Book Now',
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
