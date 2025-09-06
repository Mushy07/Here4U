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
      appBar: AppBar(
        backgroundColor: const Color(0xFFD6EEDF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // ✅ goes back to previous page
          },
        ),
        title: const Text(
          "Mood Insights",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
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
