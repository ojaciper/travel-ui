import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';
import 'package:travel_ui/widget/onBoardPage.dart';

List<String> category = [
  'Camping',
  'Mountain',
  'Climbing',
  'Swimming',
  'Sliding'
];

List<Widget> pages = [
  const HomeScreen(),
  const SizedBox(),
  const SizedBox(),
  const SizedBox(),
];

List<Widget> onBoard = const [
  OnBoardPage(
    title: "Easily Travel From Your Pocket",
    description:
        "Eaasily plan, manage and order your trip, and journey with Safari",
  ),
  OnBoardPage(
    title: "Easily Travel From Your Pocket",
    description:
        "Eaasily plan, manage and order your trip, and journey with Safari",
  ),
  OnBoardPage(
    title: "Easily Travel From Your Pocket",
    description:
        "Eaasily plan, manage and order your trip, and journey with Safari",
  )
];
