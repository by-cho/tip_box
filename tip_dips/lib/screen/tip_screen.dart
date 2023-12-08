import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_dips/screen/calendar_screen.dart';

import '../widget/bottom_sheet_widget.dart';

class TipScreen extends StatefulWidget {
  TipScreen({Key? key}) : super(key: key);

  @override
  State<TipScreen> createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  bool isCalendar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF8F3),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isCalendar
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isCalendar = false;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.list_bullet,
                            size: 35,
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isCalendar = true;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.calendar,
                            size: 35,
                          ),
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Monthly Total'),
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
            ),
            Divider(),
            isCalendar
                ? CalendarScreen()
                : Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('등록된 내역이 없습니다.'),
                    ],
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            isScrollControlled: true, // 높이 제한 없애기
            builder: (context) => SingleChildScrollView(
              child: BottomSheetWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFF035C48),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
