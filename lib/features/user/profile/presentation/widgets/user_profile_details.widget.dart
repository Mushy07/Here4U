import 'package:flutter/material.dart';

class UserProfileDetailsWidget extends StatelessWidget {
  const UserProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle labelStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(0xFF6A6A6A),
      fontSize: 15,
    );
    TextStyle valueStyle = const TextStyle(
      color: Color(0xFF6A6A6A),
      fontSize: 15,
    );

    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _detailRow('Age', '25 Y/O', labelStyle, valueStyle),
          _detailRow('Gender', 'Female', labelStyle, valueStyle),
          _detailRow(
            'Education/Institution',
            'Asia Pacific University',
            labelStyle,
            valueStyle,
          ),
          _detailRow(
            'Email Address',
            'yikweii1234@gmail.com',
            labelStyle,
            valueStyle,
          ),
        ],
      ),
    );
  }

  Widget _detailRow(
    String label,
    String value,
    TextStyle labelStyle,
    TextStyle valueStyle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(label, style: labelStyle)),
          Expanded(
            flex: 3,
            child: Text(value, style: valueStyle, textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}
