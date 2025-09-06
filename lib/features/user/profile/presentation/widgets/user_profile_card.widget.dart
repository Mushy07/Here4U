import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';

class UserProfileCardWidget extends StatelessWidget {
  const UserProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/profile_picture.png'),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('@yikweii1234', style: usernameStyle),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFB980)),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.transparent,
                    ),
                    child: Text(
                      'Good Listener',
                      style: TextStyle(
                        color: Color(0xFFFFB980),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
