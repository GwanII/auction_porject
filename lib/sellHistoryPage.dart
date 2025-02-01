import 'package:flutter/material.dart';

class SellHistoryPage extends StatelessWidget {
  final List<String> sellingItems = [
    '용의 비늘',
    '유니콘 뿔',
    '용사의 검',
    '여우 털',
    '메이드 롤러',
    '사랑과 평화'
  ];

  final List<String> soldItems = [
    '고양이 털',
    '흡혈귀의 피',
    '빨간 리본',
    '나침반'
  ];

  final Map<String, Map<String, String>> auctionDetails = {
    '고양이 털': {'date': '2023-10-01', 'price': '10억'},
    '흡혈귀의 피': {'date': '2023-09-15', 'price': '200억'},
    '빨간 리본': {'date': '2023-08-20', 'price': '공짜'},
    '나침반': {'date': '2023-07-10', 'price': '뿡빵띠써글밍느엥뇨'},
  };

  void _showAuctionDetails(BuildContext context, String itemName) {
    final details = auctionDetails[itemName];
    if (details != null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('낙찰 정보'),
            content: Text('낙찰일: ${details['date']}\n낙찰가: ${details['price']}'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('닫기'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('판매 내역', style: TextStyle(fontSize: 35),),
          bottom: TabBar(
            tabs: [
              Tab(text: '판매중'),
              Tab(text: '판매완료'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 판매중인 상품 목록
            ListView.builder(
              itemCount: sellingItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(sellingItems[index]),
                );
              },
            ),
            // 판매 완료된 상품 목록
            ListView.builder(
              itemCount: soldItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(soldItems[index]),
                  onTap: () => _showAuctionDetails(context, soldItems[index]),
                );
              },
            ),
          ],
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
      ),
    );
  }
}
