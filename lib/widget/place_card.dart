import 'package:flutter/material.dart';
import 'package:travel_ui/model/place.dart';

class PlaceCard extends StatelessWidget {
  final Place index;
  const PlaceCard({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
      child: SizedBox(
        height: MediaQuery.of(context).size.width / 1.5,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                index.image,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 35,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
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
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          index.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          index.subTitle,
                          style: const TextStyle(
                            color: Color(0xFFBFBFBF),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF4FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "\$ ${index.price}",
                        style: const TextStyle(
                          color: Color(0xFF1D3FFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
