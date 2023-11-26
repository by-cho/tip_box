import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime? selectedDay;
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final defaultBoxDesign = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        width: 1,
        color: Color(0xFF38DEBD),
      ),
    );

    return TableCalendar(
      locale: 'ko_Kr',
      focusedDay: focusedDay,
      firstDay: DateTime(1800),
      lastDay: DateTime(3000),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      calendarStyle: CalendarStyle(
        defaultDecoration: defaultBoxDesign,
        weekendDecoration: defaultBoxDesign,
        todayDecoration: BoxDecoration(
          color: Color(0xFF38DEBD),
          borderRadius: BorderRadius.circular(4),
        ),
        selectedDecoration: BoxDecoration(
          color: Color(0xFF035C48),
          borderRadius: BorderRadius.circular(4),
        ),
        defaultTextStyle: TextStyle(
          color: Color(0xFF035C48),
          fontWeight: FontWeight.w500,
        ),
        outsideDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
      ),
      onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
        setState(() {
          print(selectedDay);
          this.selectedDay = selectedDay;
          this.focusedDay = selectedDay;
        });
      },
      selectedDayPredicate: (DateTime date) {
        if (selectedDay == null) {
          return false;
        }
        return date.year == selectedDay!.year &&
            date.month == selectedDay!.month &&
            date.day == selectedDay!.day;
      },
    );
  }
}
