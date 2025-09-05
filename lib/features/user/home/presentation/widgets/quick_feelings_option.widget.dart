import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';

class WellnessOption extends StatelessWidget {
  final String emoji;
  final String label;
  final VoidCallback onTap;

  const WellnessOption({
    required this.emoji,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 32),
              ),

          Text(
            label,
            style:  heading2Style,
          ),
        ],
      ),
    );
  }
}