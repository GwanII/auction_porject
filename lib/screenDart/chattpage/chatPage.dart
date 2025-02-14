import 'package:flutter/material.dart';
import 'package:auction_porject/screenDart/mypage/currentTransactionPop.dart';
import 'package:auction_porject/screenDart/mypage/mypage.dart';
import 'package:auction_porject/screenDart/mainpage/mainPage.dart';
import 'dm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700)),
        backgroundColor: Color.fromRGBO(166, 204, 229, 1),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DMPage()),
              ); //dmpage 와 연결
            },
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/sample.jpg',
                      width: 108,
                      height: 108,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded( //게시물 연동
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '어몽어스 텀블러 팝니다.',
                          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(' 네고 가능?', style: TextStyle(color: Colors.grey, fontSize: 18.0)), //최근 메세지 뜨게
                            Text('오후 1:30', style: TextStyle(color: Colors.grey, fontSize: 14.0)), //최근 메세지 시간 뜨게
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFB0E0E6),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatPage()),
                  );
                },

              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mypage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.swap_horiz),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {
                  showCurrentTransaction(context); // 팝업 다이얼로그 호출
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}