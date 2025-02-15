import 'package:auction_porject/screenDart/chattpage/chatPage.dart';
import 'package:auction_porject/screenDart/mainpage/mainPage.dart';
import 'package:auction_porject/screenDart/mypage/mypage.dart';
import 'package:auction_porject/screenDart/mypage/currentTransactionPop.dart';
import 'package:flutter/material.dart';

class PostingDetailPage extends StatefulWidget {
  const PostingDetailPage({super.key});

  @override
  _PostingDetailPageState createState() => _PostingDetailPageState();
}
// 공부하기 ..ㅋㅋ +
class _PostingDetailPageState extends State<PostingDetailPage> {
  final TextEditingController _bidController = TextEditingController();
  List<Map<String, dynamic>> bids = [
    {'username': 'daeun1001', 'bid': 45000, 'isMine': false},
    {'username': 'daeun1001', 'bid': 46000, 'isMine': false},
    {'username': 'daeun1001', 'bid': 47000, 'isMine': false},
  ];

  int getHighestBid() {
    return bids.isNotEmpty ? bids.map((b) => b['bid'] as int).reduce((a, b) => a > b ? a : b) : 0;
  }

  void _submitBid() {
    String input = _bidController.text.trim();
    int? bidValue = int.tryParse(input);

    if (bidValue == null) {
      _showAlertDialog('입력 오류', '숫자만 입력하세요.');
      return;
    }

    if (bidValue <= getHighestBid()) {
      _showAlertDialog('입찰 오류', '더 높은 가격을 입력하세요.');
      return;
    }

    setState(() {
      bids.add({'username': 'myUser', 'bid': bidValue, 'isMine': true});
    });

    _bidController.clear();
  }

  void _showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('확인'),
            ),
          ],
        );
      },
    );
  }
//
  //게시글 연동해야됨
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('3DS 닌텐도 판매합니다.', style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700)),
          backgroundColor: Color.fromRGBO(166, 204, 229, 1),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sample.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '2019년도 구매한 닌텐도입니다. 사용 기스는 많지만, 정상 작동하고 오래 사용한 점을 감안하여 게임 칩들은 그냥 드립니다.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        '현재 최고 입찰가: ${getHighestBid()} 원',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: bids.length,
                        itemBuilder: (context, index) {
                          return _buildBidBubble(
                            bids[index]['username'],
                            bids[index]['bid'],
                            bids[index]['isMine'],
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _bidController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '입찰가 입력',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: _submitBid,
                          child: Text('입찰!'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(166,204,229, 1),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatPage()),
                  );
                },

              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mypage()),
                  );
                },
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

    );
  }

  Widget _buildBidBubble(String username, int bid, bool isMine) {
    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!isMine) ...[
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              SizedBox(width: 10.0),
            ],
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isMine)
                  Text(
                    username,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isMine ? Colors.blue[200] : Colors.grey[200],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    '$bid 원',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}