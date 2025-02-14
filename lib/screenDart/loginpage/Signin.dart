import 'package:auction_porject/screenDart/loginpage/Create_New_Account.dart';
import 'package:auction_porject/screenDart/settingpage/evaluation.dart';
import 'package:auction_porject/screenDart/loginpage/lostidpw.dart';
import 'package:auction_porject/screenDart/mypage/sellerDetail.dart';
import 'package:auction_porject/screenDart/settingpage/servicecenter.dart';
import 'package:auction_porject/screenDart/settingpage/setting.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool autologinis_checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: const Text("로그인",
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
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
                    labelText: '아이디',
                    hintText: '아이디를 입력해주세요',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                padding: EdgeInsets.fromLTRB(20,200,20,20)
              ),
              Padding(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '비밀번호를 입력해주세요',
                  ),
                  obscureText: true,
                ),
                  padding: EdgeInsets.fromLTRB(20,20,20,0)
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CheckboxListTile(
                        title: Text("자동 로그인",
                          style: TextStyle(
                            color: Colors.grey),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: autologinis_checked,
                        onChanged: (bool? value) {
                          setState(() {
                            autologinis_checked = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => lostidpw(),
                        )
                      );
                    },
                    child: Text('아이디/비밀번호를 잊어버렸나요?',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370,40),
                ),
                onPressed: () {
                    // 아이디, 비밀번호가 일치하면 메인화면으로 이동하는 코드
                  showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("로그인 성공!"),
                        content: Text("일치하지 않는 아이디, 비밀번호 입니다."),
                      );
                    }
                  );
                },
                child: Text('로그인',
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370,40)
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => CreateNewAccount(),
                    )
                  );
                }, child: Text('회원가입',
                  style: TextStyle(
                    fontSize: 17
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}