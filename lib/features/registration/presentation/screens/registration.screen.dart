import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_form.widget.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_header.widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              RegistrationHeaderWidget(title:"Register"),
              const SizedBox(height: 70.0),
              RegistrationFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
