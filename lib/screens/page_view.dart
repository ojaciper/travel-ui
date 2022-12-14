import 'package:flutter/material.dart';
import 'package:travel_ui/constant/constant.dart';

class PageTab extends StatefulWidget {
  const PageTab({super.key});

  @override
  State<PageTab> createState() => _PageTabState();
}

class _PageTabState extends State<PageTab> {
  int selectedPage = 0;
  void changePage(int page) {
    setState(() {
      selectedPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
              onTap: changePage,
              currentIndex: selectedPage,
              type: BottomNavigationBarType.fixed,
              elevation: 9,
              iconSize: 26,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.note), label: ''),
              ]),
        ),
      ),
    );
  }
}
