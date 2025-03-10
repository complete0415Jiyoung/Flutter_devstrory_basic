import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 83, 151, 1),
          title: Text(
            'Login',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold, // 폰트 두께
              color: Color.fromRGBO(255, 135, 136, 1),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Image.asset('assets/images/image1.jpeg', height: 500),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 13),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      print('로그인 버튼이 눌렸습니다.'); // 콘솔에 출력
                    },
                    child: Text('로그인하기'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
