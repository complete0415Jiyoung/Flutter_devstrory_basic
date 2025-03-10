import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key, required this.feed}) : super(key: key);

  final Map<String, dynamic> feed;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          widget.feed["imageUrl"],
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: isFavorite ? Colors.red : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.chat_bubble),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
          ],
        ),
        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${widget.feed['likeCount']} likes",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.feed['content']),
        ),
        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            DateFormat('yyyy-MM-dd HH:mm').format(widget.feed['dateTime']),
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
