import 'package:flutter/material.dart';
import 'screenDart/mypage.dart'; // MyPageScreen 파일 가져오기
import 'screenDart/pointpaymentpage.dart';
import 'package:auction_porject/screenDart/Signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}