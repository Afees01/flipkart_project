// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxggIt5CPQqUxKi3eW4QhNIKv5eH5LdhRwMA&s"))),
            ),
          ),
          Text(
            "𝙁𝙇𝙄𝙋𝙆𝘼𝙍𝙏",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
        ]),
        SizedBox(
          height: 20,
        ),
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
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.camera_alt_outlined)
                    ],
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/fk-p-flap/850/600/image/09f4df13a7820d06.jpg?q=90"))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/fk-p-flap/850/600/image/09f4df13a7820d06.jpg?q=90"))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 180,
              width: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://rukminim2.flixcart.com/fk-p-flap/850/600/image/09f4df13a7820d06.jpg?q=90"))),
            ),
          ],
        ),
      ]),
    ));
  }
}
