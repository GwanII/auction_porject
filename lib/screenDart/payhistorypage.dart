import 'package:flutter/material.dart';
import 'package:auction_porject/screenDart/mypage.dart';
import 'package:flutter/foundation.dart';


class payhistory extends StatelessWidget {
  const payhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(166,204,229, 1),
            title: Text("Auction"),
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
                      Text('결제 내역' ,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(width: 200),
                    ],
                  ),

                  SizedBox(height: 20),

                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: Container(
                      width: 500,
                      height: 250,
                      color: Colors.grey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                      child: Icon(Icons.arrow_upward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                        children: [
                                          Expanded(
                                              flex: 45,
                                              child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                          ),
                                          Expanded(
                                              flex: 45,
                                              child: Text('날짜' , textAlign: TextAlign.right,)
                                          ),

                                        ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_upward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_upward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_upward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_downward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_downward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_downward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_downward)
                                  ),

                                  Expanded(
                                    flex: 9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 45,
                                            child: Text('금액 포인트' , textAlign: TextAlign.left,)
                                        ),
                                        Expanded(
                                            flex: 45,
                                            child: Text('날짜' , textAlign: TextAlign.right,)
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  )
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
