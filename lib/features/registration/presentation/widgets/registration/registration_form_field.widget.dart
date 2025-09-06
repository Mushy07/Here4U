import 'package:flutter/material.dart';

class RegistrationFormFieldWidget extends StatelessWidget {
  const RegistrationFormFieldWidget({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFDDEEE5),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Text(
            hintText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A6A6A),
              fontSize: 16,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF6A6A6A),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
