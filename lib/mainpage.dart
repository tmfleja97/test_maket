import 'package:flutter/material.dart';

import 'package:test_maket/pages/chat_page.dart';
import 'package:test_maket/pages/life_page.dart';
import 'package:test_maket/pages/location_page.dart';
import 'package:test_maket/pages/my_page.dart';
import 'package:test_maket/pages/home_page.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  int _selectedIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: '동네 생활',
      icon: Icon(Icons.my_library_books_outlined),
    ),
    BottomNavigationBarItem(
      label: '주변 위치',
      icon: Icon(Icons.location_on_outlined),
    ),
    BottomNavigationBarItem(
      label: '채팅',
      icon: Icon(Icons.chat_bubble_outline_outlined),
    ),
    BottomNavigationBarItem(
      label: '내 정보',
      icon: Icon(Icons.person_outline),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    /*
    final List<String> images = [
      "https://cdn2.thecatapi.com/images/6bt.jpg",
      "https://cdn2.thecatapi.com/images/ahr.jpg",
      "https://cdn2.thecatapi.com/images/arj.jpg",
      "https://cdn2.thecatapi.com/images/brt.jpg",
      "https://cdn2.thecatapi.com/images/cml.jpg",
      "https://cdn2.thecatapi.com/images/e35.jpg",
      "https://cdn2.thecatapi.com/images/MTk4MTAxOQ.jpg",
      "https://cdn2.thecatapi.com/images/MjA0ODM5MQ.jpg",
      "https://cdn2.thecatapi.com/images/AuY1uMdmi.jpg",
      "https://cdn2.thecatapi.com/images/AKUofzZW_.png",
    ];
    */

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              '도곡동',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: images.length,
          itemBuilder: (context, index) {
            final image = images[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Feed(imageUrl: image),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
