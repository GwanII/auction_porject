import 'package:auction_porject/screenDart/changemoneypage.dart';
import 'package:auction_porject/screenDart/pointpaymentpage.dart';
import 'package:auction_porject/screenDart/payhistorypage.dart';
import 'package:auction_porject/screenDart/profilepage.dart';
import 'package:flutter/material.dart';

class mypage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(166,204,229, 1),
          title: Text('Auction'),
        ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child : SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profile()),
                      );
                    },

                    child: Text('프로필' ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  SizedBox(width: 250),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => profile()),
                      );
                    },

                    child: Icon(Icons.keyboard_arrow_right),
                  ),

                ],
              ),

              SizedBox(height: 12,),

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

              //SizedBox(height: 10),

              Divider(
                height: 40.0,
                color: Colors.grey[900],
                endIndent: 30,
                thickness: 1.5,
              ),

              Row(
                children: <Widget> [
                  Text('결제' ,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 200),
                ],
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pointpayment()),
                      );
                    },

                    child: Text('포인트 결제' ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  SizedBox(width: 200),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pointpayment()),
                      );
                    },

                    child: Icon(Icons.keyboard_arrow_right),
                  ),

                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => changemoney()),
                      );
                    },

                    child: Text('포인트 현금 변환' ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  SizedBox(width: 153),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => changemoney()),
                      );
                    },

                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => payhistory()),
                      );
                    },

                    child: Text('포인트 구매 내역' ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  SizedBox(width: 153),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => payhistory()),
                      );
                    },

                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),

              Divider(
                height: 40.0,
                color: Colors.grey[900],
                endIndent: 30,
                thickness: 1.5,
              ),

              Text('마이 옥션' ,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  Text('물건 구매 내역' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 171),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text('물건 판매 내역' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 171),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text('찜 목록' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 239),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),

              Divider(
                height: 40.0,
                color: Colors.grey[900],
                endIndent: 30,
                thickness: 1.5,
              ),

              Text('고객 센터' ,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  Text('고객 센터' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 220),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text('사용자 신고' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 200),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Text('앱 평가' ,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),

                  SizedBox(width: 240),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),



            ],
          ),
          )
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
              ],
            ),
          ),
        ),
      )
    );
  }
}

