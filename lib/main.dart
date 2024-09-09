import 'package:flipkart_project/view/bottom_navbar/bottom_navbar.dart';
import 'package:flipkart_project/view/categories_screen/categories_screen.dart';
import 'package:flipkart_project/view/explore_screen/explore_screen.dart';
import 'package:flipkart_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}
