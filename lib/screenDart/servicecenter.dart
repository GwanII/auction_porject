import 'package:flutter/material.dart';

class servicecenter extends StatefulWidget {
  const servicecenter({super.key});

  @override
  State<servicecenter> createState() => _servicecenterState();
}

class _servicecenterState extends State<servicecenter> {
  var currentValue = '뭐가 들어갈까요';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: const Text("고객센터",
          style: TextStyle(fontSize: 35),),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,20,0,20),
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        'assets/images/servicecenterimage.png'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,20,0,20),
                    child: Text('무엇을 도와드릴까요?',
                      style: TextStyle(fontSize: 30),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,10),
                child: Text("자주 묻는 질문들",
                  style: TextStyle(fontSize: 15),),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                      top: BorderSide(color: Colors.grey),
                    )
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("확인해주세요!"),
                              content: Container(
                                width: 200,
                                height: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1. 계좌에 돈이 충분한지 확인해주세요."),
                                    Text("2. 은행이 점검시간인지 확인해주세요."),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                    child: const Text('닫기'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }
                                ),
                              ]
                          );
                        }
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("1. 포인트 충전이 안돼요!",
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,5,0),
                          child: Icon(Icons.chevron_right),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    )
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("확인해주세요!"),
                          content: Container(
                            width: 200,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1. 포인트가 충분한지 확인해주세요."),
                                Text("2. 이미 종료된 경매인지 확인해주세요"),
                                Text("3. 이미 입찰했는지 확인해주세요"),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('닫기'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }
                            ),
                          ]
                        );
                      }
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("2. 경매 입찰이 안돼요!",
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,5,0),
                          child: Icon(Icons.chevron_right),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    )
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("확인해주세요!"),
                          content: Container(
                            width: 200,
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1. 양식에 맞추어 작성하였는지 확인해주세요."),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('닫기'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }
                            ),
                          ]
                        );
                      }
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("3. 경매 등록이 안돼요!",
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,5,0),
                          child: Icon(Icons.chevron_right),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                child: TextField(
                  minLines: 3,
                  maxLines: 3,
                  maxLength: 200,
                  decoration: InputDecoration(
                    hintText: '문의 내용',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20,20,20,10)
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370,40),
                ),
                onPressed: () {
                  // 아이디, 비밀번호가 일치하면 메인화면으로 이동하는 코드
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context){
                        return AlertDialog(
                          title: Text("감사합니다."),
                          content: Text("빠른 시일 내에 답변 드리겠습니다."),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('닫기'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }
                            ),
                          ]
                        );
                      }
                  );
                },
                child: Text('문의하기',
                  style: TextStyle(
                      fontSize: 20
                  ),
                )
              ),
            ],
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

                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
