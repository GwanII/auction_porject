import 'package:flutter/material.dart';
import 'screenDart/mypage.dart'; // MyPageScreen 파일 가져오기

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple My Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mypage(), // MyPageScreen을 첫 화면으로 설정
    );
  }
}