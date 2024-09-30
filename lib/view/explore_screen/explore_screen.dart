import 'package:flipkart_project/view/widgets/product_Card.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _expolreheader(),
        SizedBox(
          height: 15,
        ),
        Text(
          "Products For You",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            ProductCard(
              label: "DEPORIS\n UNO hard cardbord Pl..\n4̶9̶9̶  ₹98 \n81%off",
              imageUrl:
                  "https://5.imimg.com/data5/ZR/EU/ZO/SELLER-7920731/uno-card-game.jpg",
              labelheight: 240,
              labelboxheight: 90,
            ),
            SizedBox(
              width: 10,
            ),
            ProductCard(
              label:
                  "Aaisha Crafts\nHand tools(10 tool..\n7̶0̶0̶  ₹310\n56%off",
              imageUrl:
                  "https://cdn.shopify.com/s/files/1/0057/8938/4802/files/boAt-Rockerz-450-Pro.jpg?v=1682579854",
              labelheight: 245,
              labelboxheight: 90,
            ),
          ],
        )
      ]),
    )));
  }

  Row _expolreheader() {
    return Row(
      children: [
        Text(
          "Explore",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 150,
        ),
        Icon(Icons.search_outlined),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.mic),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.camera_alt),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.shopping_cart)
      ],
    );
  }
}
