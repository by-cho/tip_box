import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF8F3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xFF035C48),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Hi'),
                                SizedBox(width: 6),
                                Text('Yoon'),
                              ],
                            ),
                            Text('수고했어, 오늘도'),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.logout_outlined))
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF035C48),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Tip Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('ho');
                            },
                            child: Icon(
                              Icons.settings,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$3,200',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF38DEBD), // 보더 색상
                      width: 2.0, // 보더 두께
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'This Week Total',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '2023-11-20 ~ 2023-11-26',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF38DEBD),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '+ \$78',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Top 3 Tips Received',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF305750),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, // 시작 위치 (top)
                      end: Alignment.bottomCenter, // 끝 위치 (bottom)
                      colors: [
                        Color.fromARGB(255, 238, 248, 244),
                        Color(0xFF1BDBB6),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              '\$120',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '2023-10-30',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 2, // 세로 선의 너비
                          height: 100, // 세로 선의 길이
                          color: Color(0xFF2D927C), // 세로 선의 색상
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              '\$120',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '2023-10-30',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 2, // 세로 선의 너비
                          height: 100, // 세로 선의 길이
                          color: Color(0xFF2D927C), // 세로 선의 색상
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              '\$120',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '2023-10-30',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Tip History',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF305750),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // 버튼이 클릭되었을 때 수행할 동작
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE5F5D9),
                          border: Border.all(
                            color: Color.fromARGB(255, 60, 240, 204), // 보더 색상
                            width: 1.0, // 보더 두께
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          child: Text('+ View More'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
