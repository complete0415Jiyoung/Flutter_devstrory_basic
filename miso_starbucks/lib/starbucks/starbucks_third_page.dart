import 'package:flutter/material.dart';
import 'package:miso_starbucks/app_color.dart';

/// 세 번째 페이지
class StarbucksThirdPage extends StatelessWidget {
  const StarbucksThirdPage({Key? key}) : super(key: key);

  /// 전체 메뉴
  final List<Map<String, String>> menu = const [
    {
      "ko": "추천",
      "en": "Recommend",
      "imgUrl":
          "https://devclass.devstory.co.kr/flutter-basic/2/starbucks-menu1.jpg",
    },
    {
      "ko": "리저브 에스프레소",
      "en": "Reserve Espresso",
      "imgUrl":
          "https://devclass.devstory.co.kr/flutter-basic/2/starbucks-menu2.jpg",
    },
    {
      "ko": "리저브 드립",
      "en": "Reserve Drip",
      "imgUrl":
          "https://devclass.devstory.co.kr/flutter-basic/2/starbucks-menu3.jpg",
    },
    {
      "ko": "콜드브루",
      "en": "ColdBrew",
      "imgUrl":
          "https://devclass.devstory.co.kr/flutter-basic/2/starbucks-menu4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    /// Tip : TabBar controller를 직접 TabBar에 넣어줄 수도 있고, 아래와 같이 위젯으로 감싸줄 수도 있습니다.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Order",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined, color: Colors.grey),
              onPressed: () {
                print("Pay 우측 상단 아이콘 클릭 됨");
              },
            ),
          ],

          /// Tip : AppBar 하단에 TabBar를 만들어 줍니다.
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: AppColor.starbucksPrimaryColor,
            indicatorWeight: 4,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: "전체 메뉴"),
              Tab(text: "나만의 메뉴"),
              Tab(text: "🎂 홀케이크"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            /// 전체 메뉴
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                final item = menu[index % menu.length];
                final ko = item["ko"] ?? "제목";
                final en = item["en"] ?? "title";
                final imgUrl = item["imgUrl"] ?? "";
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 21,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        // Tip : circleAvatar 배경에 맞춰서 동그랗게 이미지 넣는 방법
                        backgroundImage: NetworkImage(imgUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ko,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            en,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            /// 나만의 메뉴
            Center(child: Text("나만의 메뉴")),

            /// 홀케이크 예약
            Center(child: Text("홀케이크 예약")),
          ],
        ),
      ),
    );
  }
}
