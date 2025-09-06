import 'package:flutter/material.dart';

class UserProfileStatusWidget extends StatelessWidget {
  const UserProfileStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text(
            'Current Status',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFE7F9ED),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 124, 236, 174)),
            ),
            child: Row(
              children: [
                Icon(Icons.circle, color: Color(0xFF3AC47D), size: 18),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Available to Listen',
                        style: TextStyle(
                          color: Color(0xFF3AC47D),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You'll be notified of matching requests",
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFF2F7FF),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 118, 226, 245)),
            ),
            child: Row(
              children: [
                Icon(Icons.check_circle, color: Color(0xFF3A8DFF), size: 18),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Assessment: ✓',
                        style: TextStyle(
                          color: Color(0xFF3A8DFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Mental health check completed today",
                        style: TextStyle(color: Colors.black87, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
