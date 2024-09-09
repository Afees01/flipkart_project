import 'package:flipkart_project/view/account_screen/account_screen.dart';
import 'package:flipkart_project/view/cart_screen/cart_screen.dart';
import 'package:flipkart_project/view/categories_screen/categories_screen.dart';
import 'package:flipkart_project/view/explore_screen/explore_screen.dart';
import 'package:flipkart_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectivetab = 0;
  List selectivePages = [
    const HomeScreen(),
    const ExploreScreen(),
    const CategoriesScreen(),
    AccountScreen(),
    CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: selectivePages[selectivetab],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectivetab,
            onTap: (value) {
              selectivetab = value;
              setState(() {});
            },
            selectedItemColor: Colors.red,
            selectedLabelStyle: const TextStyle(color: Colors.red),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: "Categories"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "cart")
            ]));
  }
}
