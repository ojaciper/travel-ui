import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  final String title;
  final String description;
  const OnBoardPage(
      {required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 24,
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0xFFBFBFBF),
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
