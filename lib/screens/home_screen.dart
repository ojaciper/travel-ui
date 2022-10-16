import 'package:flutter/material.dart';
import 'package:travel_ui/constant/constant.dart';
import 'package:travel_ui/data/data.dart';
import 'package:travel_ui/widget/place_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // AppBar Start Here
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 30),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF9E1A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/user.png",
                          width: 60,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Howdy",
                            style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Amak Charli",
                            style: TextStyle(
                              color: Color(0xFF1E1E1E),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    // style: ButtonStyle(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1D3FFF),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // AppBar End

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Where Would \nlike you to go?",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // search field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 25,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const TextField(
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFFBFBFBF),
                                size: 40,
                              ),
                              border: InputBorder.none,
                              prefix: SizedBox(width: 10),
                              hintStyle: TextStyle(
                                color: Color(0xFFBFBFBF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: 2,
                              ),
                              hintText: "Search location",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D3FFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/filter.png',
                          width: 35,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            /// Category Tab
            Container(
              width: double.infinity,
              // color: Colors.red,
              height: 55,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        seletedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: seletedIndex == index
                            ? const Color(0xFF1D3FFF)
                            : const Color(0xfFFFFFFF),
                        border: Border.all(
                          color: seletedIndex == index
                              ? const Color(0xFF1D3FFF)
                              : const Color(0x80BFBFBF),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        category[index],
                        style: TextStyle(
                          color: seletedIndex == index
                              ? const Color(0xFFFFFFFF)
                              : const Color(0xFFBFBFBF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // TabBar End Here

            const SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Favorite Place",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      wordSpacing: 1,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Color(0xFFBFBFBF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                      wordSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return PlaceCard(index: data[index]);
              },
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
