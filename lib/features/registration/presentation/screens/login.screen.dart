import 'package:flutter/material.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/login_form.widget.dart';

import '../../../../core/constants/theme.dart';
import '../widgets/registration/registration_header.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryClr,
        body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  RegistrationHeaderWidget(title: "Login"),
                  const SizedBox(height: 70.0),
                  LoginFormWidget(),
                ],
              ),
            )
        )
    );
  }
}
