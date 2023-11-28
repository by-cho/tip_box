// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  // final Function(DateTime selectedDay) onDaySelectedCallback;
  final DateTime? selectedDay;
  final DateTime focusedDay;
  final OnDaySelected? onDaySelected;

  const CalendarWidget({
    Key? key,
    required this.selectedDay,
    required this.focusedDay,
    required this.onDaySelected,
  }) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TableCalendar(
        locale: 'ko_Kr',
        focusedDay: widget.focusedDay,
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
        onDaySelected: widget.onDaySelected,
        selectedDayPredicate: (DateTime date) {
          if (widget.selectedDay == null) {
            return false;
          }
          return date.year == widget.selectedDay!.year &&
              date.month == widget.selectedDay!.month &&
              date.day == widget.selectedDay!.day;
        },
      ),
    );
  }
}
