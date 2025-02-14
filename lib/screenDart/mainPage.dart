import 'package:flutter/material.dart';
import 'postingDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

//찜 기능, 검색 기능 .. ㅜㅜ? 하단바 어디감
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auction', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700)),
        backgroundColor: Color.fromRGBO(166, 204, 229, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 3 / 4,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostingDetailPage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('3DS 닌텐도 판매합니다.', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(child: Image.asset('assets/sample.jpg'),),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text('최소 입찰가: 6000', style: TextStyle(fontSize: 18.0)),
                      Text('~ 01/09', style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}