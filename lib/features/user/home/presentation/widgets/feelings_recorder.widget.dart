import 'package:flutter/material.dart';
import 'package:here4u/features/user/home/presentation/widgets/quick_feelings_option.widget.dart';

import '../../../../../core/constants/theme.dart';
import '../../../diary/presentation/widgets/slider.widget.dart';

class FeelingsRecorder extends StatelessWidget {
  const FeelingsRecorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.pets, color: Colors.black54),
            const SizedBox(width: 6),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Today Wellness", style: subHeadingStyle),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WellnessOption(
              emoji: "😃",
              label: "Happy",
              onTap: () => print("Happy selected"),
            ),
            const SizedBox(width: 3),
            WellnessOption(
              emoji: "🙂",
              label: "Okay",
              onTap: () => print("Okay selected"),
            ),
            const SizedBox(width: 3),
            WellnessOption(
              emoji: "😔",
              label: "Down",
              onTap: () => print("Down selected"),
            ),
            const SizedBox(width: 3),
            WellnessOption(
              emoji: "😰",
              label: "Anxious",
              onTap: () => print("Anxious selected"),
            ),
          ],
        ),
        const SizedBox(height: 5),
        SimpleSlider(
          min: 0,
          max: 100,
          initialValue: 50,
          divisions: 20,
          onChanged: (value) {
            print("Slider adjusted to: $value");
          },
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            maxLines: null,
            decoration: InputDecoration(
              hintText: "Write your thoughts here...",
              filled: true,
              fillColor: Colors.yellow[100],
              contentPadding: const EdgeInsets.all(12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.mic, color: Colors.black54),
                    onPressed: () {
                      // Handle voice input
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.black54),
                    onPressed: () {
                      // Handle send action
                    },
                  ),
                ],
              ),
            ),
            style: const TextStyle(color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
