// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  Timer? _timer;
  final double _scrollInterval = 2.0; // Time interval in seconds

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Set up the timer for automatic scrolling
    _timer =
        Timer.periodic(Duration(seconds: _scrollInterval.toInt()), (timer) {
      if (_scrollController.hasClients) {
        // Get the maximum scroll extent
        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.offset;
        final nextScroll =
            (currentScroll + 300) % maxScroll; // 300 is the width of each item

        _scrollController.animateTo(
          nextScroll,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxggIt5CPQqUxKi3eW4QhNIKv5eH5LdhRwMA&s",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "𝙁𝙇𝙄𝙋𝙆𝘼𝙍𝙏",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.mic_none_outlined),
                        SizedBox(width: 10),
                        Icon(Icons.camera_alt_outlined),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Horizontal Banner List
            Container(
              height: 200, // Adjust height if necessary
              child: ListView(
                scrollDirection: Axis.horizontal,
                controller: _scrollController, // Assign the ScrollController
                padding: const EdgeInsets.symmetric(horizontal: 5),
                children: [
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://rukminim2.flixcart.com/fk-p-flap/850/600/image/09f4df13a7820d06.jpg?q=90",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://couponswala.com/blog/wp-content/uploads/2022/09/flipkart-combo-offers.jpg.webp",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://imgeng.jagran.com/images/2023/oct/flipkart-big-billion-days-sale-2023-end-date1697360136550.jpg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.fonearena.com/blog/wp-content/uploads/2023/10/Apple-iPhone-14-Big-Billion-Days-819x1024.jpg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.indianexpress.com/2023/10/flipkart-big-billion-days-best-smartphone-offers-featured.jpg",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300, // Adjust width as needed
                    margin:
                        const EdgeInsets.only(right: 2), // Space between items
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://hyyzo.com/blog/content/images/2024/05/flipkart-upcoming-sale.webp",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
