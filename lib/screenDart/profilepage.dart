import 'package:flutter/material.dart';
import 'package:auction_porject/screenDart/mypage.dart';
import 'package:flutter/foundation.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        home: Scaffold(

          appBar: AppBar(
            title: Text("Acution"),
          ),

          body: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 0, 0)


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
