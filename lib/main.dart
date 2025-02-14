import 'package:auction_porject/screenDart/mainpage/mainPage.dart';
import 'package:flutter/material.dart';
import 'screenDart/mypage/mypage.dart'; // MyPageScreen 파일 가져오기
import 'screenDart/mypage/pointpaymentpage.dart';
import 'package:auction_porject/screenDart/loginpage/Signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
