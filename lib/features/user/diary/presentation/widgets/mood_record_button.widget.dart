import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/theme.dart';
import '../../../../../core/widgets/button.dart';

class MoodRecorderCard extends StatelessWidget {
  final DateTime date;
  final VoidCallback onAddMood;

  const MoodRecorderCard({
    super.key,
    required this.date,
    required this.onAddMood,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          title: Text(
            DateFormat('EEEE, MMM d, yyyy').format(date),
            style: heading3Style,
          ),
          subtitle: Text(
            'Add your mood for this day',
            style: heading4Style,
          ),
          trailing: MyButton(
            label: "+",
            onTap: onAddMood,
          ),
        ),
      ),
    );
  }
}
