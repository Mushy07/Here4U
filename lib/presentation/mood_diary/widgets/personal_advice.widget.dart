import 'package:flutter/material.dart';

class PersonalAdviceWidget extends StatelessWidget {
  const PersonalAdviceWidget({super.key});

  Widget _adviceBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Personal Advice",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _adviceBox(
              "On days you take a walk outdoors, your mood scores are 40% higher. "
                  "Consider adding this to your routine.",
            ),
            _adviceBox(
              "This week shows a steady rise in your mood compared to last week.",
            ),
          ],
        ),
      ),
    );
  }
}
