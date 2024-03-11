import 'package:flutter/material.dart';

class Location_page extends StatefulWidget {
  const Location_page({super.key});

  @override
  State<Location_page> createState() => _Location_pageState();
}

class _Location_pageState extends State<Location_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("위치 정보 화면 입니다.")),
    );
  }
}
