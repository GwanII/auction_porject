import 'package:flutter/material.dart';

// 팝업 다이얼로그를 표시하는 함수
void showCurrentTransaction(BuildContext context) {
  final List<Map<String, String>> transactionItems = [
    {'name': '거래 상품 A', 'title': '게시글 제목 A', 'price': '\$100'},
    {'name': '거래 상품 B', 'title': '게시글 제목 B', 'price': '\$150'},
    {'name': '거래 상품 C', 'title': '게시글 제목 C', 'price': '\$200'},
  ];

  void _showProblemDialog(BuildContext context) {
    int? selectedValue;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('문제 선택'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: List<Widget>.generate(4, (int index) {
              return RadioListTile<int>(
                title: Text('문제 ${index + 1}'),
                value: index,
                groupValue: selectedValue,
                onChanged: (int? value) {
                  selectedValue = value;
                  Navigator.of(context).pop(); // 선택 후 팝업 닫기
                },
              );
            }),
          ),
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

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('거래를 확정 짓겠습니까?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 예 버튼을 누르면 팝업 닫기
              },
              child: Text('예'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('아니오'),
            ),
          ],
        );
      },
    );
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('거래 중인 상품'),
        content: Container(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: transactionItems.length,
            itemBuilder: (context, index) {
              final item = transactionItems[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('상품명: ${item['name']}'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.network(
                          'https://via.placeholder.com/100',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('게시글 제목: ${item['title']}'),
                            Text('낙찰 가격: ${item['price']}'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _showCompletionDialog(context);
                          },
                          child: Text('거래 완료'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _showProblemDialog(context);
                          },
                          child: Text('거래 문제 발생'),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          ),
        ),
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
