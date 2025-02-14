import 'package:auction_porject/screenDart/servicecenter.dart';
import 'package:flutter/material.dart';

class sellerDetail extends StatefulWidget {
  const sellerDetail({super.key});

  @override
  State<sellerDetail> createState() => _sellerDetailState();
}

class _sellerDetailState extends State<sellerDetail> with SingleTickerProviderStateMixin {
  var currentValue = '욕설';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(166,204,229, 1),
        title: Text("프로필",
          style: TextStyle(fontSize: 25),),
        actions: [IconButton(icon: Icon(Icons.report),
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context){
                return AlertDialog(
                  title: Text("사용자 신고"),
                  content: DropdownButtonFormField<String>(
                    value: currentValue,
                    items: [
                      DropdownMenuItem(
                        value: '욕설',
                        child: Text('욕설')
                      ),
                      DropdownMenuItem(
                        value: '음란글',
                        child: Text('음란글')
                      ),
                      DropdownMenuItem(
                        value: '사기',
                        child: Text('사기')
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        currentValue = value!;
                      });
                    },
                  ),
                  actions: [
                    TextButton(
                      child: Text("신고하기"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("신고완료"),
                              content: Text("소중한 의견 감사합니다."),
                              actions: [
                                TextButton(
                                  child: Text("닫기"),
                                  onPressed: () => Navigator.of(context).pop(),
                                )
                              ],
                            );
                          }
                        );
                      },
                    ),
                    TextButton(
                      child: Text("닫기"),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  ],
                );
              }
            );
          })
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 230.0,
                    title: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset(
                                    'assets/images/test.jfif',
                                    fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Text("닉네임",
                                  style: TextStyle(fontSize: 25),),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                                child: Text("#12341234",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey
                                  )
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("매너온도란?"),
                                          content: Text(
                                            "매너온도는 Auction에서 사용자의 거래 매너를 나타내는 지표입니다."),
                                        );
                                      }
                                    );
                                  },
                                  child: Text("매너온도",
                                    style: TextStyle(
                                      fontSize: 17,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("매너온도란?"),
                                          content: Text(
                                            "매너온도는 Auction에서 사용자의 거래 매너를 나타내는 지표입니다."),
                                        );
                                      }
                                    );
                                  },
                                  icon: Icon(Icons.info)
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.black12),
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.lightBlueAccent,
                                  ),
                                )
                              ],
                            )
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              child: Text("36.5°C",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.lightBlueAccent
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true, delegate: TabBarDelegate()
              )
            ];
          },
          body:TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => servicecenter()
                            )
                          );
                        },
                        child: Container(
                          color: Colors.transparent.withOpacity(0.0),
                          width: 400,
                          height: 150,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 120,
                                child: Image.asset(
                                  'assets/images/test.jfif',
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          now_productList[index].title,
                                          style: TextStyle(
                                              fontSize: 25
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          now_productList[index].desc,
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          now_productList[index].price,
                                          style: TextStyle(
                                              fontSize: 20
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      childCount: 10
                    ),
                  )
                ],
              ),
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => servicecenter()
                            )
                          );
                        },
                        child: Container(
                          color: Colors.transparent.withOpacity(0.0),
                          width: 400,
                          height: 150,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 120,
                                child: Image.asset(
                                  'assets/images/endtest1.png',
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          now_productList[index].title,
                                          style: TextStyle(
                                            fontSize: 25
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          now_productList[index].desc,
                                          style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          now_productList[index].price,
                                          style: TextStyle(
                                            fontSize: 20
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      childCount: 10
                    ),
                  )
                ],
              )
            ],
          ),
        ),
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

                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey,
                iconSize: 35,
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  const TabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Align(
      child: Container(
        color: Colors.white,
        child: TabBar(
          tabs: [
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
                child: const Text(
                  "진행 중인 경매",
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                color: Colors.white,
                child: const Text(
                  "완료된 경매",
                ),
              ),
            ),
          ],
          indicatorWeight: 2,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class now_ProductModel {
  const now_ProductModel(this.title, this.desc, this.price);
  final String title;
  final String desc;
  final String price;
}

const now_productList = [
  now_ProductModel(
    "닌텐도 스위치",
    "20시간 남음",
    "220,000원",
  ),
  now_ProductModel(
    "에어팟 케이스",
    "1일 23시간 남음",
    "15,000원",
  ),
  now_ProductModel(
    "아이폰 충전기",
    "3시간 23분 남음",
    "7,000원",
  ),
  now_ProductModel(
    "치킨 기프티콘",
    "46분 남음",
    "13,000원",
  ),
  now_ProductModel(
    "세탁기",
    "1일 1시간 남음",
    "1,000,000원",
  ),
  now_ProductModel(
    "닌텐도 스위치",
    "20시간 남음",
    "220,000원",
  ),
  now_ProductModel(
    "에어팟 케이스",
    "1일 23시간 남음",
    "15,000원",
  ),
  now_ProductModel(
    "아이폰 충전기",
    "3시간 23분 남음",
    "7,000원",
  ),
  now_ProductModel(
    "치킨 기프티콘",
    "46분 남음",
    "13,000원",
  ),
  now_ProductModel(
    "세탁기",
    "1일 1시간 남음",
    "1,000,000원",
  ),
];

class end_ProductModel {
  const end_ProductModel(this.title, this.desc, this.price);
  final String title;
  final String desc;
  final String price;
}

const end_productList = [
  end_ProductModel(
    "SONY 카메라",
    "1일 1시간 남음",
    "1,000,000원",
  ),
  end_ProductModel(
    "닌텐도 스위치",
    "20시간 남음",
    "220,000원",
  ),
  end_ProductModel(
    "에어팟 케이스",
    "1일 23시간 남음",
    "15,000원",
  ),
  end_ProductModel(
    "아이폰 충전기",
    "3시간 23분 남음",
    "7,000원",
  ),
  end_ProductModel(
    "치킨 기프티콘",
    "46분 남음",
    "13,000원",
  ),
  end_ProductModel(
    "SONY 카메라",
    "1일 1시간 남음",
    "1,000,000원",
  ),
  end_ProductModel(
    "닌텐도 스위치",
    "20시간 남음",
    "220,000원",
  ),
  end_ProductModel(
    "에어팟 케이스",
    "1일 23시간 남음",
    "15,000원",
  ),
  end_ProductModel(
    "아이폰 충전기",
    "3시간 23분 남음",
    "7,000원",
  ),
  end_ProductModel(
    "치킨 기프티콘",
    "46분 남음",
    "13,000원",
  ),
];