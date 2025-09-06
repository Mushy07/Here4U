import 'package:flutter/material.dart';
import '../widgets/mood_distribution_chart.widget.dart';
import '../widgets/pattern_recognition_chart.widget.dart';
import '../widgets/negative_moods.widget.dart';
import '../widgets/personal_advice.widget.dart';
import '../widgets/section_header.widget.dart';

class MoodDiaryScreen extends StatelessWidget {
  const MoodDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6EEDF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SectionHeader(),
              MoodDistributionChart(),
              SizedBox(height: 20),
              PatternRecognitionChart(),
              SizedBox(height: 20),
              NegativeMoodsWidget(),
              SizedBox(height: 20),
              PersonalAdviceWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
