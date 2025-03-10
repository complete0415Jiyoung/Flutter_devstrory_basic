import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> feeds = [
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat1.jpg",
        'likeCount': 1,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat2.jpg",
        'likeCount': 2,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat3.jpg",
        'likeCount': 3,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat4.jpg",
        'likeCount': 4,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat5.jpg",
        'likeCount': 5,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat6.jpg",
        'likeCount': 6,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
      {
        'imageUrl':
            "https://devclass.devstory.co.kr/flutter-basic/2/insta-cat7.gif",
        'likeCount': 7,
        'isFavorte': false,
        'content': '안녕하세여',
        'dateTime': DateTime.now(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
        ),
        title: Image.asset('assets/logo.png', height: 32),
        centerTitle: true, // android와 iOS 동일하게 센터로 맞추기
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
          // ),
        ],
      ),
      body: ListView.builder(
        itemCount: feeds.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> feed = feeds[index];
          return Feed(feed: feed);
        },
      ),
    );
  }
}
