import 'package:flutter/material.dart';

class NegativeMoodsWidget extends StatelessWidget {
  const NegativeMoodsWidget({super.key});

  Widget _progressItem(String title, int value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: value / 100,
          backgroundColor: Colors.grey[300],
          color: Colors.teal,
          minHeight: 8,
        ),
        const SizedBox(height: 10),
      ],
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
            const Text("Negative moods are most likely linked with:",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _progressItem("Family Arguments", 75),
            _progressItem("Long Study Sessions", 60),
            _progressItem("Sunday Evening", 80),
          ],
        ),
      ),
    );
  }
}
