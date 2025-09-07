import 'package:flutter/material.dart';

class ShareStoryButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ShareStoryButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF107B8A), Color(0xFF7A66EC)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add_comment_outlined, color: Colors.white),
        label: const Text(
          "Share Your Story (Anonymous)",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Make button background transparent
          shadowColor: Colors.transparent, // Remove shadow to show gradient cleanly
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
