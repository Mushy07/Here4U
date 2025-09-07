import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';

class FindTitle extends StatelessWidget {
  const FindTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.access_time,
          size: 150,
          color: Colors.blue,
        ),
        const SizedBox(height: 20),
        Text(
          "Finding Your Match",
          style: heading1Style,
        ),
        const SizedBox(height: 10),


      ],

    );
  }
}


