import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../../../../../core/widgets/month_selector.widget.dart';

class CustomCalendarWidget extends StatefulWidget {
  final DateTime currentDate;
  final DateTime currentMonth;
  final ValueChanged<DateTime> onDateChanged;
  final ValueChanged<DateTime> onMonthChanged;

  const CustomCalendarWidget({
    super.key,
    required this.currentDate,
    required this.currentMonth,
    required this.onDateChanged,
    required this.onMonthChanged,
  });

  @override
  State<CustomCalendarWidget> createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  late DateTime _currentMonth;

  @override
  void initState() {
    super.initState();
    _currentMonth = widget.currentMonth;
  }

  void _previousMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
    });
    widget.onMonthChanged(_currentMonth);
  }

  void _nextMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1);
    });
    widget.onMonthChanged(_currentMonth);
  }

  double getCalendarHeight(DateTime date) {
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    final lastDayOfMonth = DateTime(date.year, date.month + 1, 0);
    int firstWeekday = firstDayOfMonth.weekday % 7;
    int totalDays = lastDayOfMonth.day;
    int rows = ((firstWeekday + totalDays) / 7).ceil();
    return rows * 55.0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MonthSelector(
          selectedDate: _currentMonth,
          onPreviousMonth: _previousMonth,
          onNextMonth: _nextMonth,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: getCalendarHeight(_currentMonth),
            child: CalendarCarousel<Event>(
              selectedDateTime: widget.currentDate,
              targetDateTime: _currentMonth,
              dayButtonColor: const Color(0xFFE3F5F5),
              todayButtonColor: const Color(0xFFE3F5F5),
              selectedDayButtonColor: const Color(0xFF79BDBD),
              weekdayTextStyle: const TextStyle(
                color: Color(0xFF3F6262),
                fontWeight: FontWeight.bold,
              ),
              weekendTextStyle: const TextStyle(
                color: Color(0xFF3F6262),
                fontWeight: FontWeight.bold,
              ),
              daysTextStyle: const TextStyle(
                color: Color(0xFF3F6262),
                fontWeight: FontWeight.bold,
              ),
              todayTextStyle: const TextStyle(
                color: Color(0xFF3F6262),
                fontWeight: FontWeight.bold,
              ),
              daysHaveCircularBorder: true,
              todayBorderColor: Colors.transparent,
              headerText: '',
              showHeader: false,
              onDayPressed: (date, events) => widget.onDateChanged(date),
              onCalendarChanged: (date) => widget.onMonthChanged(date),
            ),
          ),
        ),
      ],
    );
  }
}
