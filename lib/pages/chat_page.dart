import 'package:flutter/material.dart';

class Chat_page extends StatefulWidget {
  const Chat_page({super.key});

  @override
  State<Chat_page> createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("채팅 화면 입니다.")),
    );
  }
}
