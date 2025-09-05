import 'package:flutter/material.dart';
import '../../../../../core/constants/theme.dart';
import '../../../diary/domain/models/mood_record.model.dart';

class MoodRecordsList extends StatelessWidget {
  final List<MoodRecord> moodRecords;

  const MoodRecordsList({
    super.key,
    required this.moodRecords,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: moodRecords.length + 1,
      separatorBuilder: (context, index) =>
      index == 0 ? const SizedBox() : const Divider(indent: 80, endIndent: 20),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // text left, button right
              children: [
                Text(
                  "Mood Records",
                  style: subHeadingStyle,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Add new mood");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child:  Text("View Insights",
                  style: heading4Style),
                ),
              ],
            ),
          );
        }
        final record = moodRecords[index - 1];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 60,
                  child: Text(
                    record.time,
                    style: heading3Style,
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
    );
  }
}
