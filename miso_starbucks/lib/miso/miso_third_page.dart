import 'package:flutter/material.dart';
import 'package:miso_starbucks/app_color.dart';

/// 세 번째 페이지
/// 세 번째 페이지
class MisoThirdPage extends StatelessWidget {
  const MisoThirdPage({Key? key}) : super(key: key);

  /// 세 번째 화면 배경 이미지 URL
  final String backgroundImgUrl =
      "https://devclass.devstory.co.kr/flutter-basic/2/miso.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.misoPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              /// 배경 이미지
              Positioned(
                bottom: 0,
                child: Container(
                  // 이미지 최대 크기 제한
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.network(backgroundImgUrl),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 64),

                  /// 타이틀
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      // 공통 스타일
                      style: TextStyle(
                        fontSize: 28,
                        height: 1.5, // 줄간격 한 줄의 1.5배
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(text: "친구 추천할 때마다\n"),
                        TextSpan(
                          text: "10,000원 ",
                          // 개별 스타일
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "할인 쿠폰 지급!"),
                      ],
                    ),
                  ),
                  SizedBox(height: 64),

                  /// 자세히 보기
                  GestureDetector(
                    onTap: () {
                      print("자세히 보기 클릭 됨");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "자세히 보기",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(Icons.chevron_right, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),

              /// 친구 추천하기
              Positioned(
                bottom: 42,
                child: GestureDetector(
                  onTap: () {
                    print("친구 추천하기 클릭 됨");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(64),
                      // 그림자
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.4),
                          // 광원의 위치를 중심(0, 0)보다 위쪽(0, 5133)
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.redeem, color: AppColor.misoPrimaryColor),
                        SizedBox(width: 8),
                        Text(
                          "친구 추천하기",
                          style: TextStyle(
                            color: AppColor.misoPrimaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
