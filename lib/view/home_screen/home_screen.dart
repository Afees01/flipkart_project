import 'package:flipkart_project/view/widgets/product_Card.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  Timer? _timer;
  final double _scrollInterval = 2.0; // Time interval in seconds
  final double _itemWidth = 400; // Width of each item
  final double _scrollStep = 300; // Scroll step
  bool switchbutton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Set up the timer for automatic scrolling
    _timer =
        Timer.periodic(Duration(seconds: _scrollInterval.toInt()), (timer) {
      if (_scrollController.hasClients) {
        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.offset;
        final nextScroll = (currentScroll + _scrollStep) % maxScroll;

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
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                _buildSearchBar(),
                _buildHorizontalBanner(),
                SizedBox(height: 10),
                _buildAvatarRow(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ProductCard(
                          label: "Best of TWS\n From ₹799",
                          imageUrl:
                              "https://assets.ajio.com/medias/sys_master/root/20240229/wj5o/65df98ae16fd2c6e6a2bc196/-473Wx593H-4937118470-multi-MODEL.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      ProductCard(
                          label: "   Best Deal\n From ₹1,099",
                          imageUrl:
                              "https://assets.ajio.com/medias/sys_master/root/20230123/0BAX/63ceadc1f997dd708e1c01fc/-473Wx593H-4933504630-multi-MODEL.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ProductCard(
                          label: " Best of NIKE\n From ₹399",
                          imageUrl:
                              "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/29971991/2024/6/15/42524347-c600-4af7-b821-583de1476a011718443883104NikeRevolution7WomensRoadRunningShoes1.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      ProductCard(
                          label: " Best of ASUS\n From ₹8,990",
                          imageUrl:
                              "https://www.asus.com/media/Odin/Websites/global/ProductLine/20200824120814.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Handpicked For You",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Icon(Icons.arrow_right_alt)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ProductCard(
                          label: "Zebronics ze..\n₹249",
                          imageUrl:
                              "https://zebronics.com/cdn/shop/products/ZEB-NITRO-1-pic2.jpg?v=1623839913&width=1200"),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: Colors.blue, // Set background color to blue
      child: Padding(
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
                color: Colors
                    .white, // Change text color to contrast with blue background
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      color: Colors.blue, // Set background color to blue
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "Brand mall",
                  style: TextStyle(
                    color: Colors
                        .white, // Change text color to contrast with blue background
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch(
                  value: switchbutton,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      switchbutton = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(width: 5),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors
                      .white, // Optional: Background color of the text field
                  border: OutlineInputBorder(),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalBanner() {
    return Container(
      height: 200, // Adjust height if necessary
      child: ListView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: [
          _buildBannerItem(
              "https://rukminim2.flixcart.com/fk-p-flap/850/600/image/09f4df13a7820d06.jpg?q=90"),
          _buildBannerItem(
              "https://couponswala.com/blog/wp-content/uploads/2022/09/flipkart-combo-offers.jpg.webp"),
          _buildBannerItem(
              "https://imgeng.jagran.com/images/2023/oct/flipkart-big-billion-days-sale-2023-end-date1697360136550.jpg"),
          _buildBannerItem(
              "https://images.fonearena.com/blog/wp-content/uploads/2023/10/Apple-iPhone-14-Big-Billion-Days-819x1024.jpg"),
          _buildBannerItem(
              "https://images.indianexpress.com/2023/10/flipkart-big-billion-days-best-smartphone-offers-featured.jpg"),
          _buildBannerItem(
              "https://hyyzo.com/blog/content/images/2024/05/flipkart-upcoming-sale.webp"),
        ],
      ),
    );
  }

  Widget _buildBannerItem(String imageUrl) {
    return Container(
      width: _itemWidth,
      margin: const EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Widget _buildAvatarRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildCircleAvatar(
                  "https://exchange4media.gumlet.io/news-photo/108131-flipkartcamp.jpg",
                  "27th Sept",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://image01-in.oneplus.net/ebp/202404/07/1-M00-52-A2-CpgM7WYR-viATDPnAATPnD-sVqo964.png?x-amz-process=image/format,webp/quality,Q_80",
                  "Mobiles",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2024/03/Flipkart-UPI.jpg?ssl=1&quality=80&w=f",
                  "UPI",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTalA9ZO7Nwmy5Br57ac19OsVwj3-9iFh4Sqg&s",
                  "Appliance",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://s3-ap-southeast-1.amazonaws.com/cashback-static/upload/files/2020-09-29/da71c61856b9814384ea217da7cee5d7.jpg",
                  "Super Coin",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT77QzH4FJLkZigWfv4ArvG1DqfKm_HconDpUIgM2hdrW3kQ-aEjfkKUguYxqKqRoKxEd8&usqp=CAU",
                  "Electronics",
                ),
                SizedBox(width: 10),
                _buildCircleAvatar(
                  "https://rukminim2.flixcart.com/image/850/1000/xif0q/dress/m/k/y/l-blacktiger-combo-dresses-for-women-trambakundi-original-imah3g2dcnvgzhdb.jpeg?q=90&crop=false",
                  "Fashion",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Set to start alignment
              children: [
                _buildCircleAvatar(
                  "https://rukminim2.flixcart.com/image/450/400/xif0q/stuffed-toy/x/u/7/combo-of-10-soft-and-stuffed-toys-for-birthday-gifts-baby-toys-original-imahf9b6x6zbanqg.jpeg?q=90&crop=false",
                  "Toys & Baby",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR652HbywpYdydLqe1xBFlAfhtF4LKeAzU01Q&s",
                  "Sports",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://img.joomcdn.net/259383c373e0bbba98507d395e3ec4190002741a_original.jpeg",
                  "Shoes",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTDFsu4w6ZmJjCJjBkN_Z-PDvtIx0UmrtKDg&s",
                  "Sell Phone",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://rukminim2.flixcart.com/fk-p-flap/700/400/image/439d8f19e6d81233.jpg?q=90",
                  "Auto ACC",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBU5Vp4oqcWtdzyKn8HaE5J3vzFsQ7kevFag&s",
                  "Food",
                ),
                SizedBox(width: 10), // Adding spacing for consistency
                _buildCircleAvatar(
                  "https://5.imimg.com/data5/SELLER/Default/2022/9/LF/UY/FD/131144733/1-500x500.png",
                  "Gadgets",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatar(String imageUrl, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
