import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/features/registration/presentation/widgets/user_landing/registration_landing_buttons.widget.dart';
import 'package:here4u/features/registration/presentation/widgets/user_landing/registration_landing_details.widget.dart';
import 'package:here4u/features/registration/presentation/widgets/user_landing/registration_landing_header.widget.dart';

class RegistrationLandingScreen extends StatelessWidget {
  const RegistrationLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 80.0),
              RegistrationLandingHeaderWidget(),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: RegistrationLandingDetailsWidget(),
              ),
              const SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: RegistrationLandingButtonsWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
