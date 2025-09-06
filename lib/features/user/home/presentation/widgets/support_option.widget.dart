import 'package:flutter/material.dart';
import 'package:here4u/features/user/home/presentation/widgets/todays_wellness_option_card.widget.dart';

class SupportOption extends StatelessWidget {
  const SupportOption({super.key});

  @override
  Widget build(BuildContext context) {
    return

      Column(
        children: [
          const SizedBox(height: 20.0),
          Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TodaysWellnessOptionCardWidget(
                title: "Talk to Someone 🤝",
                subtitle:
                "Connect privately with someone who cares and understands",
              ),
              TodaysWellnessOptionCardWidget(
                title: "Share with the community 💬",
                subtitle:
                "Post your thoughts and get support from others like you",
              ),
            ],
          ),
              ),
        ],
      );
  }
}
