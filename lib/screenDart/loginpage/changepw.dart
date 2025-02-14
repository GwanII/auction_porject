import 'package:auction_porject/screenDart/loginpage/Signin.dart';
import 'package:flutter/material.dart';

class changepw extends StatefulWidget {
  const changepw({super.key});

  @override
  State<changepw> createState() => _changepwState();
}

class _changepwState extends State<changepw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: const Text("비밀번호 변경",
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
                  child: Text("새로운 비밀번호를 입력하세요",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '비밀번호',
                          hintText: '10자 이상의 대소문자, 숫자, 특수문자 포함',
                        ),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20,10,20,5)
                ),
                Padding(
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '비밀번호 확인',
                          hintText: '동일한 비밀번호를 입력하세요',
                        ),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20,10,20,5)
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
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("변경 완료!",
                                        style: TextStyle(fontSize: 30),
                                      ),
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
                                  ]
                              );
                            }
                        );
                      },
                      child: Text("비밀번호 변경"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),)
                      ),
                    ),
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
