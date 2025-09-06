import 'package:flutter/material.dart';

class UserProfileGoodListenerPortalWidget extends StatelessWidget {
  const UserProfileGoodListenerPortalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          Icon(Icons.verified_user, color: Colors.black54),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Become a good listener\nComplete training and assessment to help others in the community.',
              style: TextStyle(color: Colors.black87, fontSize: 13),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE5E2E6),
              foregroundColor: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            ),
            child: Text('Apply'),
          ),
        ],
      ),
    );
  }
}
