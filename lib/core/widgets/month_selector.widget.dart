import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/theme.dart';

class MonthSelector extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;

  const MonthSelector({
    super.key,
    required this.selectedDate,
    required this.onPreviousMonth,
    required this.onNextMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('MMMM yyyy').format(selectedDate),
            style: subHeadingStyle,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_left, size: 35),
            onPressed: onPreviousMonth,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_right, size: 35),
            onPressed: onNextMonth,
          ),
        ],
      ),
    );
  }
}
