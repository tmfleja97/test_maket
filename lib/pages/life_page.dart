import 'package:flutter/material.dart';

class Life_page extends StatefulWidget {
  const Life_page({super.key});

  @override
  State<Life_page> createState() => _Life_pageState();
}

class _Life_pageState extends State<Life_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("생활 정보 화면 입니다.")),
    );
  }
}
