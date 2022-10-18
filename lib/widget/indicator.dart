import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF1D3FFF) : const Color(0xFFBFBFBF),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
