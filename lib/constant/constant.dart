import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen.dart';

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

List<Widget> onBoard = [
  Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Column(
      children: const [
        Text(
          "Easily Travel From Your Pocket",
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            "Eaasily plan, manage and order your trip, and journey with Safari",
            style: TextStyle(
              color: Color(0xFFBFBFBF),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  ),
  Container(
    color: Colors.blue,
  )
];
