import 'package:flutter/material.dart';
import 'currentTransactionPop.dart'; // 팝업 다이얼로그가 정의된 파일을 임포트

class PurchaseHistoryPage extends StatelessWidget {
  final List<Map<String, String>> purchasingItems = [
    {'name': '어?', 'currentPrice': '20원'},
    {'name': '오??', 'currentPrice': '120,230원'},
    {'name': '네..?', 'currentPrice': '111,111,111원'},
  ];

  final List<String> purchasedItems = [
    '사카밤바스피스',
    '이베리코',
  ];

  final Map<String, Map<String, String>> purchaseDetails = {
    '사카밤바스피스': {'date': '2023-10-01', 'price': '20,000원'},
    '이베리코': {'date': '2023-09-15', 'price': '140,000원'},
  };

  void _showPurchaseDetails(BuildContext context, String itemName) {
    final details = purchaseDetails[itemName];
    if (details != null) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('구매 정보'),
            content: Text('구매일: ${details['date']}\n구매가: ${details['price']}'),
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
          title: Text('구매 내역', style: TextStyle(fontSize: 35),),
          bottom: TabBar(
            tabs: [
              Tab(text: '구매중'),
              Tab(text: '구매완료'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 구매중인 상품 목록
            ListView.builder(
              itemCount: purchasingItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(purchasingItems[index]['name']!),
                  subtitle: Text('현재가: ${purchasingItems[index]['currentPrice']}'), // 현재가 표시
                );
              },
            ),
            // 구매 완료된 상품 목록
            ListView.builder(
              itemCount: purchasedItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(purchasedItems[index]),
                  onTap: () => _showPurchaseDetails(context, purchasedItems[index]),
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
                IconButton(
                  icon: Icon(Icons.swap_horiz),
                  color: Colors.grey,
                  iconSize: 35,
                  onPressed: () {
                    showCurrentTransaction(context); // 팝업 다이얼로그 호출
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
