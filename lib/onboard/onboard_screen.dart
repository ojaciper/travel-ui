import 'package:flutter/material.dart';
import 'package:travel_ui/constant/constant.dart';
import 'package:travel_ui/screens/page_view.dart';
import 'package:travel_ui/widget/custom_button.dart';
import 'package:travel_ui/widget/indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late PageController pageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/onboard/reshot.png',
              ),
            ),
            Container(
              width: size.width / 1.4,
              height: size.height / 2.3,
              // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                color: const Color(0xFFEFF4FF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: size.width / 2,
                    child: PageView(
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      children: onBoard,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Indicator(
                            isActive: index == pageIndex,
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30)
                        .copyWith(bottom: 30),
                    child: CustomButton(
                      text: "Get Started",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PageTab(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
