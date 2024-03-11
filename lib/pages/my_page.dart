import 'package:flutter/material.dart';

class My_page extends StatefulWidget {
  const My_page({super.key});

  @override
  State<My_page> createState() => _My_pageState();
}

class _My_pageState extends State<My_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("내 정보 화면 입니다.")),
    );
  }
}
