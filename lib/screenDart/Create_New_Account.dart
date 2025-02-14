import 'package:auction_porject/screenDart/Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({super.key});

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: const Text("회원가입",
          style: TextStyle(fontSize: 35),),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '이름',
                    hintText: '이름을 입력하세요',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                padding: EdgeInsets.fromLTRB(20,10,20,5)
              ),
              Padding(
                child: TextFormField(
                  maxLength: 6,
                  decoration: InputDecoration(
                    counterText: '',
                    labelText: '닉네임',
                    hintText: '2~6자의 한글, 영어, 숫자',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                padding: EdgeInsets.fromLTRB(20,10,20,5)
              ),
              Row(
                children: [
                  Padding(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 170,
                      child: TextField(
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: '아이디',
                          hintText: '5~10자의 영어, 숫자',
                        ),
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
                            barrierDismissible: false,
                            builder: (context){
                              return AlertDialog(
                                title: Text("사용 가능한 아이디 입니다.",
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
                        child: Text("중복확인"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '10자 이상의 대소문자, 숫자, 특수문자 포함',
                  ),
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                ),
                padding: EdgeInsets.fromLTRB(20,10,20,5)
              ),
              Padding(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '비밀번호 확인',
                    hintText: '동일한 비밀번호를 입력하세요',
                  ),
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                ),
                padding: EdgeInsets.fromLTRB(20,10,20,5)
              ),
              Row(
                children: [
                  Padding(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 170,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
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
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.fromLTRB(0,20,0,0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("인증번호를 보냈습니다!",
                                style: TextStyle(fontSize: 15),
                              ),
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
                        child: Text("인증확인",),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,0),
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
                          title: const Text("회원가입 성공!"),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('로그인 화면으로'),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Signin(),
                                  )
                                );
                              }
                            ),
                          ]
                        );
                      }
                    );
                  },
                  child: Text('회원가입',
                    style: TextStyle(
                    fontSize: 17
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}