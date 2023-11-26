import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_dips/widget/calendar_widget.dart';
import 'package:table_calendar/table_calendar.dart';

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
                  is_Calendar
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              is_Calendar = false;
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
                              is_Calendar = true;
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
              is_Calendar ? CalendarWidget() : Text('일일'),
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
