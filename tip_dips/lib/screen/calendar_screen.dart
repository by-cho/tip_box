import 'package:flutter/material.dart';
import 'package:tip_dips/component/list_item.dart';
import 'package:tip_dips/widget/calendar_widget.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime? selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarWidget(
          selectedDay: selectedDay,
          focusedDay: focusedDay,
          onDaySelected: onDaySelected,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(
            color: Color(0xFF38DEBD),
          ),
          child: Center(
            child: Text(
              '${selectedDay?.year} - ${selectedDay?.month} - ${selectedDay?.day}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ), // null 체크 추가
        ),
        SizedBox(
          height: 16,
        ),
        ListItem(
          title: 'title title title',
          itemDate:
              '${selectedDay?.year} - ${selectedDay?.month} - ${selectedDay?.day}',
          tip: '38',
        ),
      ],
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}
