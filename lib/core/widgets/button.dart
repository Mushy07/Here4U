import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color bgColor;
  final Color textColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Gradient? gradient;

  const MyButton({
    super.key,
    required this.label,
    required this.onTap,
    this.bgColor = const Color(0xFFD9D9D9),
    this.textColor = Colors.black,
    this.width,
    this.height,
    this.borderRadius = 20.0,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 40.0,
        height: height ?? 45.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: gradient == null ? bgColor : null,
          gradient: gradient,
          borderRadius: borderRadius != null
              ? BorderRadius.circular(borderRadius!)
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(label, style: whiteHeading3Style),
      ),
    );
  }
}
