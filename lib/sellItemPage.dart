import 'package:flutter/material.dart';

class sellItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 샘플 데이터
    String itemImageUrl = 'https://via.placeholder.com/400'; // 실제 이미지를 사용할 경우 이 URL을 변경하세요.
    String itemName = '샘플';
    String itemPrice = '\$123,000원';
    String itemDescription = '이곳엔 판매자가 적어놓은 설명이 쭈우우욱 들어갈 예정입니다. ' * 10; // 긴 설명을 위해 반복

    return Scaffold(
      appBar: AppBar(
        title: Text('상단바'),
        //이따 뭔가 추가할거임 딱기다리셈.
        //
        //
        //
        //
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack( //스택으로 이미지 위에 제목과 가격 표시
              children: [
                // 1. 상품 이미지 행
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    itemImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                // 2. 이미지 하단에 제목과 가격 표시
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5), // 배경을 반투명하게 설정
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          itemPrice,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // 3. 설명 행
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 240,
              child: SingleChildScrollView(
                child: Text(
                  itemDescription,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            // 4. 추가 버튼 행 (예시)
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Contact Seller'),
              ),
            ),
          ],
        ),
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
