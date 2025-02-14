import 'package:auction_porject/screenDart/Signin.dart';
import 'package:auction_porject/screenDart/findpw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class lostidpw extends StatefulWidget {
  const lostidpw({super.key});

  @override
  State<lostidpw> createState() => _lostidpwState();
}

class _lostidpwState extends State<lostidpw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: const Text("아이디 찾기",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,20),
                  child: Text("아이디를 잊어버리셨나요?",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 170,
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              labelText: '전화번호',
                              hintText: '전화번호를 입력하세요',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(20,10,20,5)
                    ),
                    Container(
                      width: 130,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,20,0),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("인증번호를 보냈습니다!",
                                    style: TextStyle(fontSize: 15),),
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
                          child: Text("인증요청"),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 170,
                          child: TextFormField(
                            maxLength: 6,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              labelText: '인증번호',
                              hintText: '인증번호를 입력하세요',
                              counterText: '',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(20,10,20,5)
                    ),
                    Container(
                      width: 130,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,20,20,0),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("인증이 완료되었습니다",
                                    style: TextStyle(fontSize: 15),),
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
                          child: Text("인증확인"),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,20,0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("아이디를 확인해주세요",
                                  style: TextStyle(fontSize: 25),),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("abc123",
                                      style: TextStyle(fontSize: 15),),
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('로그인 화면으로'),
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                          Signin()), (route) => false
                                      );
                                    }
                                  ),
                                  TextButton(
                                    child: const Text('비밀번호 찾기'),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) => findpw()
                                        )
                                      );
                                    }
                                  ),
                                ]
                              );
                            }
                        );
                      },
                      child: Text("아이디 확인"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),)
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => findpw()
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,0),
                    child: Text("비밀번호를 잊어버리셨나요?",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
