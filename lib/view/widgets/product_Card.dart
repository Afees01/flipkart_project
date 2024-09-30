import 'package:flipkart_project/view/account_screen/account_screen.dart';
import 'package:flipkart_project/view/widgets/product_details.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.label,
      required this.imageUrl,
      this.labelheight,
      this.labelboxheight});

  final String label;
  final String imageUrl;
  final double? labelheight;
  final double? labelboxheight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetails()));
      },
      child: Container(
        width: 190,
        height: labelheight ??
            200, // Increased height to accommodate the stacked image and label
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[300],
        ),
        child: Stack(
          children: [
            // Image Container
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Container(
                width: 190,
                height: 150,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ),
            // Label Container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: labelboxheight ?? 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.black, // White text for contrast
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
