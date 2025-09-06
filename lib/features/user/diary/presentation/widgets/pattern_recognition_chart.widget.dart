import 'package:flutter/material.dart';

class PatternRecognitionChart extends StatelessWidget {
  const PatternRecognitionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // make sure background is white
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pattern Recognition",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Center(
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/pattern_chart.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your mood tends to dip on Sunday nights and improve on Friday afternoons.",
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
