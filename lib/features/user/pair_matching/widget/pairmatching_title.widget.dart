import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';

class FindListenerTitle extends StatelessWidget {
  const FindListenerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.chat_bubble_outline,
          size: 150,
          color: Colors.teal,
        ),
        const SizedBox(height: 20),
        Text(
          "Find A Listener",
          style: heading1Style,
        ),
        const SizedBox(height: 10),
        Text(
          "Connect with someone who cares",
          style: heading2Style,
        ),
      ],
    );
  }
}
