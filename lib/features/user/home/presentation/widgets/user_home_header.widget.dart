import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/logo.widget.dart';

class UserHomeHeaderWidget extends StatelessWidget {
  const UserHomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.topLeft, child: Logo());
  }
}
