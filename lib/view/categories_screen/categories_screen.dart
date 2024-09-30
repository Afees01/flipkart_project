import 'package:flipkart_project/view/widgets/categories_card.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "All Categories",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.search_rounded),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.mic)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            CategoriesCard(
              imageurl:
                  "https://gazetadourubu.com/storage/media-items/image/2024/07/neymar_20240728011024.jpg",
              label: "Fashion",
            ),
            SizedBox(
              width: 30,
            ),
            CategoriesCard(
                imageurl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTalA9ZO7Nwmy5Br57ac19OsVwj3-9iFh4Sqg&s",
                label: "Appliance")
          ]),
        ],
      ),
    )));
  }
}
