import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipScreen extends StatefulWidget {
  TipScreen({super.key});
  @override
  State<TipScreen> createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  bool is_Calendar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF8F3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Color(0xFF035C48),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Text(
                          '2023년',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF035C48),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '11월',
                              style: TextStyle(
                                color: Color(0xFF035C48),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Total'),
                      Text(
                        '\$750',
                        style: TextStyle(
                          color: Color(0xFF035C48),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is_Calendar = false;
                      });
                    },
                    child: Text(
                      '일일',
                      style: TextStyle(
                          color: is_Calendar
                              ? Colors.grey[400]
                              : Color(0xFF035C48),
                          fontWeight:
                              is_Calendar ? FontWeight.w400 : FontWeight.w700),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is_Calendar = true;
                      });
                    },
                    child: Text(
                      '달력',
                      style: TextStyle(
                          color: is_Calendar
                              ? Color(0xFF035C48)
                              : Colors.grey[400],
                          fontWeight:
                              is_Calendar ? FontWeight.w700 : FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Divider(),
              is_Calendar ? Text('달력') : Text('일일')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your FloatingActionButton's onPressed logic here
        },
        backgroundColor: Color(0xFF035C48),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
