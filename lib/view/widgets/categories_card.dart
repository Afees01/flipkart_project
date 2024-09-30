import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard(
      {super.key, required this.imageurl, required this.label});

  final String imageurl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 90,
          backgroundImage: NetworkImage(imageurl),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
