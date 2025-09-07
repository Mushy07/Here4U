import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';

class FindListenerTitle extends StatelessWidget {
  const FindListenerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/foundlistener.png',
          width:200,
          height: 200,
          fit: BoxFit.contain,
        ),
        Text(
          "Listener Found !",
          style: heading1Style.copyWith(color: Colors.green),
        ),
        const SizedBox(height: 10),

      ],
    );
  }
}
