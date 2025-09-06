import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../core/constants/theme.dart';

import '../../../diary/domain/models/mood_record.model.dart';
import '../../../diary/presentation/widgets/calender_selector.widget.dart';
import '../../../diary/presentation/widgets/mood_record.widget.dart';
import '../../../diary/presentation/widgets/mood_record_button.widget.dart';

import '../../../home/presentation/widgets/user_home_header.widget.dart';

class MoodDiaryPage extends StatefulWidget {
  const MoodDiaryPage({Key? key}) : super(key: key);

  @override
  State<MoodDiaryPage> createState() => _MoodDiaryPageState();
}

class _MoodDiaryPageState extends State<MoodDiaryPage> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentMonth = DateTime(DateTime.now().year, DateTime.now().month);
  final List<MoodRecord> moodRecords = [
    MoodRecord(
      time: "8:00",
      mood: "Happy",
      emoji: "😊",
      description: "Slept well, had a light breakfast. Feeling steady.",
    ),
    MoodRecord(
      time: "12:00",
      mood: "Neutral",
      emoji: "🙂",
      description: "A bit tired after lunch. Work feels heavy but manageable.",
    ),
    MoodRecord(
      time: "15:00",
      mood: "Sad",
      emoji: "😭",
      description: "Had an argument with a close friend. Wanted to cry.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserHomeHeaderWidget(),
                const SizedBox(height: 20.0),
                CustomCalendarWidget(
                  currentDate: _currentDate,
                  currentMonth: _currentMonth,
                  onDateChanged: (date) {
                    setState(() {
                      _currentDate = date;
                    });
                  },
                  onMonthChanged: (month) {
                    setState(() {
                      _currentMonth = month;
                    });
                  },
                ),
                  MoodRecorderCard(
                    date: _currentDate,
                    onAddMood: () => print("Add mood for ${DateFormat('yyyy-MM-dd').format(_currentDate)}"),
                  ),
                MoodRecordsList(moodRecords: moodRecords),



              ],
            ),

          )
      )
    );
  }
}
