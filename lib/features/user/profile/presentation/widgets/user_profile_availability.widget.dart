import 'package:flutter/material.dart';

class UserProfileAvailabilityWidget extends StatefulWidget {
  const UserProfileAvailabilityWidget({super.key});

  @override
  State<UserProfileAvailabilityWidget> createState() =>
      _UserProfileAvailabilityWidgetState();
}

class _UserProfileAvailabilityWidgetState
    extends State<UserProfileAvailabilityWidget> {
  bool isAvailable = false;

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
            'Availability',
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'Available to Help Others',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Switch(
                value: isAvailable,
                onChanged: (val) {
                  setState(() {
                    isAvailable = val;
                  });
                },
                activeColor: Color(0xFF3AC47D), // green thumb
                activeTrackColor: Color(0xFFB6EAC7), // light green track
              ),
            ],
          ),
          Text(
            'Requires Good Listener certification',
            style: TextStyle(color: Colors.grey[600], fontSize: 13),
          ),
        ],
      ),
    );
  }
}
