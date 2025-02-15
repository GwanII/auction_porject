import 'package:auction_porject/screenDart/chattpage/chatPage.dart';
import 'package:auction_porject/screenDart/mainpage/mainPage.dart';
import 'package:auction_porject/screenDart/mypage/mypage.dart';
import 'package:auction_porject/screenDart/mypage/currentTransactionPop.dart';
import 'package:flutter/material.dart';

class evaluation extends StatefulWidget {
  const evaluation({super.key});

  @override
  State<evaluation> createState() => _evaluationState();
}

class _evaluationState extends State<evaluation> {
  Color _color1 = Colors.grey;
  Color _color2 = Colors.grey;
  Color _color3 = Colors.grey;
  Color _color4 = Colors.grey;
  Color _color5 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color.fromRGBO(166,204,229, 1),
      title: const Text("앱 평가하기",
        style: TextStyle(fontSize: 35),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: Text('Auction 앱을 평가해주세요!',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.star),
                      color: _color1,
                      iconSize: 35,
                      onPressed: () {
                        if (_color1 == Colors.grey) {
                          setState(() {
                            _color1 = Colors.yellow;
                          });
                        }
                        else {
                          setState(() {
                            _color1 = Colors.grey;
                          });
                        }
                      }
                    ),
                    IconButton(
                      icon: Icon(Icons.star),
                      color: _color2,
                      iconSize: 35,
                      onPressed: () {
                        if (_color2 == Colors.grey) {
                          setState(() {
                            _color2 = Colors.yellow;
                          });
                        }
                        else {
                          setState(() {
                            _color2 = Colors.grey;
                          });
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.star),
                      color: _color3,
                      iconSize: 35,
                      onPressed: () {
                        if (_color3 == Colors.grey) {
                          setState(() {
                            _color3 = Colors.yellow;
                          });
                        }
                        else {
                          setState(() {
                            _color3 = Colors.grey;
                          });
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.star),
                      color: _color4,
                      iconSize: 35,
                      onPressed: () {
                        if (_color4 == Colors.grey) {
                          setState(() {
                            _color4 = Colors.yellow;
                          });
                        }
                        else {
                          setState(() {
                            _color4 = Colors.grey;
                          });
                        }
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.star),
                      color: _color5,
                      iconSize: 35,
                      onPressed: () {
                        if (_color5 == Colors.grey) {
                          setState(() {
                            _color5 = Colors.yellow;
                          });
                        }
                        else {
                          setState(() {
                            _color5 = Colors.grey;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  minLines: 6,
                  maxLines: 6,
                  maxLength: 300,
                  decoration: InputDecoration(
                    hintText: '앱 사용에 대한 의견을 자유롭게 남겨주세요.(선택사항)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,20,20,20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(370,40),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context){
                        return AlertDialog(
                          title: Text("의견 감사합니다."),
                          content: Text("더 나은 Auction이 되도록 노력하겠습니다."),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('확인'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }
                            ),
                          ]
                        );
                      }
                    );
                  },
                  child: Text('의견 남기기',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  )
                ),
              ),
            ]
          ),
        ),
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