import 'package:flutter/material.dart';

/// 세 번째 페이지
class MisoThirdPage extends StatelessWidget {
  const MisoThirdPage({Key? key}) : super(key: key);

  /// 세 번째 화면 배경 이미지 URL
  final String backgroundImgUrl =
      "https://devclass.devstory.co.kr/flutter-basic/2/miso.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Miso 세 번째 페이지")));
  }
}
