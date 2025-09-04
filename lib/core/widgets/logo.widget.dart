import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;

  const Logo({Key? key, this.size = 35}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/transparent_logo.png',
      height: size,
      fit: BoxFit.contain,
    );
  }
}
