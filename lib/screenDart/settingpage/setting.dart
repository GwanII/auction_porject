import 'package:auction_porject/screenDart/loginpage/Signin.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool noti_is_checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: const Text("설정",
        style: TextStyle(fontSize: 35),),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("알림설정", style: TextStyle(fontSize: 25),),
                Theme(
                  data: ThemeData(
                    useMaterial3: false
                  ),
                  child: Switch(value: noti_is_checked,
                    onChanged: (bool? value) {
                     setState(() {
                       noti_is_checked = value!;
                     });
                    }
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey)
              )
            ),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("로그아웃"),
                      content: Text("정말 로그아웃할까요?", ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('네'),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (BuildContext context) =>
                                Signin()), (route) => false
                            );
                          }
                        ),
                        TextButton(
                          child: const Text('아니요'),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("로그아웃",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          )
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
