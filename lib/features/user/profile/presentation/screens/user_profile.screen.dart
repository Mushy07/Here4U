import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/features/user/profile/presentation/widgets/user_profile_availability.widget.dart';
import 'package:here4u/features/user/profile/presentation/widgets/user_profile_card.widget.dart';
import 'package:here4u/features/user/profile/presentation/widgets/user_profile_details.widget.dart';
import 'package:here4u/features/user/profile/presentation/widgets/user_profile_good_listener_portal.widget.dart';
import 'package:here4u/features/user/profile/presentation/widgets/user_profile_status.widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              UserProfileCardWidget(),
              const SizedBox(height: 20.0),
              UserProfileAvailabilityWidget(),
              const SizedBox(height: 10.0),
              UserProfileStatusWidget(),
              const SizedBox(height: 10.0),
              UserProfileDetailsWidget(),
              const SizedBox(height: 10.0),
              UserProfileGoodListenerPortalWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
