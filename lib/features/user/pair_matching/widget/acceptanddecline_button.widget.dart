import 'package:flutter/material.dart';

class AcceptDeclineButtons extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const AcceptDeclineButtons({
    Key? key,
    required this.onAccept,
    required this.onDecline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Accept Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade400,
            minimumSize: const Size(120, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onAccept,
          child: const Text(
            "Accept",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),

        const SizedBox(width: 20),

        // Decline Button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade300,
            minimumSize: const Size(120, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onDecline,
          child: const Text(
            "Decline",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
