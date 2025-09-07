import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';

class AcceptDeclineTitle extends StatelessWidget {
  const AcceptDeclineTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.account_circle,
          size: 150,
          color: Colors.grey,
        ),
        const SizedBox(height: 20),
        Text(
          "Anonymous",
          style: heading1Style,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}



