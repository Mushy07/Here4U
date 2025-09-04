import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/features/user/home/presentation/widgets/pet_view.widget.dart';
import 'package:here4u/features/user/home/presentation/widgets/todays_wellness.widget.dart';
import 'package:here4u/features/user/home/presentation/widgets/user_home_header.widget.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserHomeHeaderWidget(),
              const SizedBox(height: 20.0),
              PetViewWidget(),
              const SizedBox(height: 10.0),
              TodaysWellnessWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
