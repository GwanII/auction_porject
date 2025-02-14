import 'package:flutter/material.dart';
import 'package:auction_porject/screenDart/mypage.dart';
import 'package:flutter/foundation.dart';

class changemoney extends StatelessWidget {
  const changemoney({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Auction")
          ),

          body: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
            child:
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget> [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/AmongUS.png'),
                        radius: 60.0,
                      ),

                      SizedBox(width: 30,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('닉네임',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.black,
                              letterSpacing: 2.0,

                            ),
                          ),
                          SizedBox(height: 10),
                          Text('신뢰온도',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.black,
                              letterSpacing: 2.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('보유포인트' ,
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(
                    height: 40.0,
                    color: Colors.grey[900],
                    endIndent: 30,
                    thickness: 1.5,
                  ),

                  Row(
                    children: <Widget> [
                      Text('변환포인트' ,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(width: 200),
                    ],
                  ),

                  Container(
                    child: new Flexible(
                      child: TextField(
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "최대 변환 포인트 : 보유포인트 원"
                        ),
                      ),
                    ),
                    width: 340,
                  ),

                  SizedBox(height: 20),


                  Row(
                    children: <Widget> [
                      Text('입금 받을 계좌' ,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(width: 200),
                    ],
                  ),

                  SizedBox(height: 150),

                  Center(
                    child: Row(
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () => {},
                          child: Text("변환"),

                        )

                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                ],


              ),
            ),
          ),

          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.chat_bubble),
                  Icon(Icons.person),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mypage()),
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
