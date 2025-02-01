import 'package:flutter/material.dart';

class MyDibsPage extends StatelessWidget {
  final List<String> favoriteItems = [
    '찜한 상품 A',
    '찜한 상품 B',
    '찜한 상품 C',
  ];

  final List<String> itemImages = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('찜 목록', style: TextStyle(fontSize: 35),),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2), // 테두리 설정
                  borderRadius: BorderRadius.circular(8), // 모서리를 둥글게
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8), // 이미지도 모서리 둥글게
                  child: Image.network(
                    itemImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(favoriteItems[index]),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () {
                  // 찜 목록에서 제거하는 로직 추가
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFB0E0E6),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                iconSize: 35,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
