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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                    "https://img.freepik.com/free-photo/fashionable-couple-love-posing_273443-1444.jpg",
                label: "Fashion",
              ),
              SizedBox(
                width: 45,
              ),
              CategoriesCard(
                  imageurl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTalA9ZO7Nwmy5Br57ac19OsVwj3-9iFh4Sqg&s",
                  label: "Appliance")
            ]),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              CategoriesCard(
                imageurl:
                    "https://asset20.ckassets.com/resources/image/ckseller/CKS-Mobiles-000245_1-1665577882.jpg",
                label: "Mobiles",
              ),
              SizedBox(
                width: 45,
              ),
              CategoriesCard(
                  imageurl:
                      "https://ecelectronics.com/wp-content/uploads/2020/04/Modern-Electronics-EC-.jpg",
                  label: "Electronics")
            ]),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              CategoriesCard(
                imageurl: "https://etimg.etb2bimg.com/photo/74881928.cms",
                label: "Sports Hub",
              ),
              SizedBox(
                width: 45,
              ),
              CategoriesCard(
                  imageurl:
                      "https://d1hy6t2xeg0mdl.cloudfront.net/image/726909/308cb4788c/800-width",
                  label: "Furniture")
            ]),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              CategoriesCard(
                imageurl:
                    "https://www.completelykidsrichmond.com/wp-content/uploads/2019/01/toys-300x168.jpg",
                label: "Toys & Books",
              ),
              SizedBox(
                width: 45,
              ),
              CategoriesCard(
                  imageurl:
                      "https://ecelectronics.com/wp-content/uploads/2020/04/Modern-Electronics-EC-.jpg",
                  label: "Electronics")
            ]),
          ],
        ),
      ),
    )));
  }
}
