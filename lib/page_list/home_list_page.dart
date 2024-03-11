import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  bool isFavorite = false; // 좋아요 여부

  @override
  Widget build(BuildContext context) {

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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            widget.imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'M1 아이패드 프로 11형(3세대) 128G 팝니다.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Text(
                '도곡동 · 6분 전',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '100만원',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  Spacer(), // 자기가 차지할 수 있는 공간을 최대한 차지하고 나머지 위젯을 밀어냄
                  GestureDetector(
                    // 위젯을 버튼처럼 만들 수 있음
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          isFavorite
                              ? CupertinoIcons.heart_fill
                              : CupertinoIcons.heart,
                          color: isFavorite ? Colors.pink : Colors.black,
                          size: 16,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
