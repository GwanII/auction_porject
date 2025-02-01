import 'package:flutter/material.dart';

Color fromOpacity(double opacity) {
  final int alpha = (opacity * 255).toInt();
  return Color.fromARGB(alpha, 0, 0, 0); // 검정색
} //밑에 제목, 가격 불투명도 조절하는 전역함수임.

class sellItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> itemImage = [
      'https://i.namu.wiki/i/277pc7nPRKaKoYl8944L8G6ntTSlk_XApY9jWIyxuM45n6G5N_243MmwxvmYbFbL9-CSkHUuHpsN9fXqZrFS5JV7T4rdhHOtKT5e8ifGtL58SqNlPjOMc2Hd-DM6eFbxNH_eJSxXSVTo-EroKFtHug.webp',
      'https://i.namu.wiki/i/wXR6F5AXWx_7C0UDDWLSxzBiuQ2UWMsNwTARaev73Elr5MqYLk1QXHkZCTAHGywtAdxlc4KC900IIIv2uhuzs-YWh5wf70FjMS7x78t3bui6P0xg-psLstiBPolMHsIQm6kpWBJDLIf3P6gjSkr43g.webp',
      'https://i.namu.wiki/i/ByueDrK7eFHjt8Wm7D79maKJyND1LVJg2IkIhc_m1yLbNBuFN3KMgNMwDVZY_aUjpffGzXdl9lO6CC7v35Wsj3y_UCszt1lUtE7Dbi7ka1LYtOEJWFLcN1Hy22nl64W7lQ8CrphYBmLzb1oKrDOTew.webp',
      'https://i.namu.wiki/i/ASf3wMHAz5VgpENKUWjubuUCb38E3WctgQNzt57Yx_wy-XvJAmjM35Np9bxEnFgUjcIUDxGQuLaeVsDJKmkNlsJfNdT-1bJXZZbavxrzleRAZjizlqOenBmjiEunxb_bMki2vwEaE7ghWwa5ZFO4MQ.webp',
      'https://i.namu.wiki/i/9TLM2IleeYlvvCZG2yTZpVdENhvgL3stc5OwO5ojJejyhANp5CDTmru_ofhuqtRyJbT4ePt3Ew7QJOhP4RJ_4IifOqaxz1h4P_tNtUFBGrvCT1Sm4wKmb7RbZwfEzXTBkYZWmgnJT62DxFjyxOTULw.webp',
      'https://i.namu.wiki/i/9TLM2IleeYlvvCZG2yTZpVdENhvgL3stc5OwO5ojJejyhANp5CDTmru_ofhuqtRyJbT4ePt3Ew7QJOhP4RJ_4IifOqaxz1h4P_tNtUFBGrvCT1Sm4wKmb7RbZwfEzXTBkYZWmgnJT62DxFjyxOTULw.webp',
      'https://i.namu.wiki/i/9TLM2IleeYlvvCZG2yTZpVdENhvgL3stc5OwO5ojJejyhANp5CDTmru_ofhuqtRyJbT4ePt3Ew7QJOhP4RJ_4IifOqaxz1h4P_tNtUFBGrvCT1Sm4wKmb7RbZwfEzXTBkYZWmgnJT62DxFjyxOTULw.webp',
      'https://i.namu.wiki/i/9TLM2IleeYlvvCZG2yTZpVdENhvgL3stc5OwO5ojJejyhANp5CDTmru_ofhuqtRyJbT4ePt3Ew7QJOhP4RJ_4IifOqaxz1h4P_tNtUFBGrvCT1Sm4wKmb7RbZwfEzXTBkYZWmgnJT62DxFjyxOTULw.webp',
      'https://i.namu.wiki/i/u7xtmretisPMzL6eBpihOtLvuXgaloV9q2e8aYIjunvMk0AMIBDML9X3yANXhoAul91Y1jlGqMFPfogQvlkoXL9OIpnd5cjSLzHGHlxnson2LRHW8UASo5g6jkFzLxc7nbHQWvax6QF07J3YGMX2TQ.webp',
      'https://i.namu.wiki/i/FbYTnUCcnyScN1kynlAbgOH7V2l2HpCd6EWURaRXk9VGaAvugLbnBQnm86u4S741M7MWiio0lp-K0YrIgtKUcoPRxqjWX1-TtsRueR-wkEck4o7BHlLaqCcimC988jqSWR8-G9LFlT6cOrCdAAgV1A.webp',
    ]; //사진 최대 10장으로.
    String itemName = '샘플';
    String itemPrice = '\$123,000원';
    String itemDescription = '이곳엔 판매자가 적어놓은 설명이 쭈우우욱 들어갈 예정입니다. ' * 10; // 긴 설명을 위해 반복

    return Scaffold(
      appBar: AppBar(
        title: Text('상단바', style: TextStyle(fontSize: 35),),
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
                  height: 250,
                  child: PageView.builder( //PageVie.builder: 여러 페이지를 스와이프로 넘길 수 있는 레이아웃 제공.
                    itemCount: 10,
                    itemBuilder: (context, index) {
                    //각 페이지에 대한 위젯 반환. index는 현재 페이지의 인덱스 나타냄.
                      if(index < itemImage.length){
                        return Image.network(
                          itemImage[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      } else {
                        return Container(
                          child: Center(
                            child: Icon(Icons.add_a_photo, size: 50, color: Colors.grey[600])
                          ),
                        );
                      }
                    },
                  ),
                ),
                // 2. 이미지 하단에 제목과 가격 표시
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(

                    color: fromOpacity(0.5),
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
