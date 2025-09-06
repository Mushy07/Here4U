import 'package:flutter/material.dart';

class PetSelectionCardWidget extends StatelessWidget {
  final String name;
  final String imagePath;
  final Color? bgColor;
  final bool selected;
  final VoidCallback? onTap;

  const PetSelectionCardWidget({
    super.key,
    required this.name,
    required this.imagePath,
    this.bgColor,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor ?? Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
          border: selected
              ? Border.all(color: Color(0xFF6A82FB), width: 2)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(imagePath, fit: BoxFit.contain, height: 80),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A6A6A),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
