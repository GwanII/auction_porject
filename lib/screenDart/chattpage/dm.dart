import 'package:auction_porject/screenDart/chattpage/chatPage.dart';
import 'package:auction_porject/screenDart/mainpage/mainPage.dart';
import 'package:auction_porject/screenDart/mypage/mypage.dart';
import 'package:auction_porject/screenDart/mypage/currentTransactionPop.dart';
import 'package:flutter/material.dart';

class DMPage extends StatefulWidget {
  @override
  _DMPageState createState() => _DMPageState();
}

class _DMPageState extends State<DMPage> {
  List<Map<String, dynamic>> messages = []; // 메시지를 저장할 리스트
  TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      messages.add({
        'text': _controller.text,
        'myChat': true, // 내가 보낸 메시지
      });
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color.fromRGBO(166, 204, 229, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                bool myChat = messages[index]['myChat'];
                return Align(
                  alignment: myChat? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: myChat
                          ? Color.fromRGBO(220, 248, 198, 1)
                          : Color.fromRGBO(240, 240, 240, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      messages[index]['text'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: '메시지를 입력하세요...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(166,204,229, 1),
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