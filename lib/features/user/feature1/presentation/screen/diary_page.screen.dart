import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:here4u/features/user/feature1/presentation/widgets/bottom_navibar.widget.dart';
import 'package:intl/intl.dart';
import '../../../../../core/constants/theme.dart';
import '../../../../../core/widgets/button.dart';
import '../../../../../core/widgets/logo.widget.dart';
import '../../../../../core/widgets/month_selector.widget.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../../domain/models/mood_record.model.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  int _selectedIndex = 0;
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



  void _previousMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1);
    });
  }

  void _nextMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1);
    });
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
    return Scaffold(
      backgroundColor: primaryClr,
      // bottomNavigationBar: BottomNaviBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onNavBarTap,
      // ),
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Logo(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MonthSelector(
                selectedDate: _currentMonth,
                onPreviousMonth: _previousMonth,
                onNextMonth: _nextMonth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: SizedBox(
                height: getCalendarHeight(_currentMonth),
                child: CalendarCarousel<Event>(
                  selectedDateTime: _currentDate,
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
                  onDayPressed: (date, events) {
                    setState(() {
                      _currentDate = date;
                    });
                  },
                  onCalendarChanged: (date) {
                    setState(() {
                      _currentMonth = date;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  title: Text(DateFormat('EEEE, MMM d, yyyy').format(_currentDate), style: heading3Style),
                  subtitle: Text('Add your mood for this day', style: heading4Style,),
                  trailing: MyButton(
                    label: "+",
                    onTap: ()=> null)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Mood Records",style: subHeadingStyle,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.separated(
                  itemCount: moodRecords.length,
                  separatorBuilder: (context, index) => const Divider(indent: 80, endIndent: 20),
                  itemBuilder: (context, index) {
                    final record = moodRecords[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              child: Text(
                                record.time,
                                style: heading3Style
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: record.mood,
                                        style: diaryEmotionStyle,
                                      ),
                                      TextSpan(
                                        text: " ${record.emoji}",
                                        style: diaryEmojiStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  record.description,
                                  style: heading3Style,
                                ),
                              ],

                            ),

                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
