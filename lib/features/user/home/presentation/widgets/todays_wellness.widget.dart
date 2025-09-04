import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/button.dart';
import 'package:here4u/features/user/home/presentation/widgets/todays_wellness_option_card.widget.dart';

class TodaysWellnessWidget extends StatefulWidget {
  const TodaysWellnessWidget({super.key});

  @override
  State<TodaysWellnessWidget> createState() => _TodaysWellnessWidgetState();
}

class _TodaysWellnessWidgetState extends State<TodaysWellnessWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.6),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          // TODO: Explore with TabBar widget
          Row(
            children: [
              Expanded(
                child: MyButton(
                  label: "Share Feelings",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Placeholder(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: MyButton(
                  label: "Need Support",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Placeholder(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
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
      ),
    );
  }
}
