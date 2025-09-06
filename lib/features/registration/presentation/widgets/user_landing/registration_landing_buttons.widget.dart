import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/button.dart';
import 'package:here4u/features/login/presentation/screens/login.screen.dart';
import 'package:here4u/features/registration/presentation/screens/registration.screen.dart';

class RegistrationLandingButtonsWidget extends StatelessWidget {
  const RegistrationLandingButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyButton(
            label: "Register",
            textColor: Color(0xFFFFFFFF),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
            height: 48,
            borderRadius: 20.0,
            gradient: LinearGradient(
              colors: [Color(0xFF107B8A), Color(0xFF7A66EC)],
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: MyButton(
            label: "Login",
            textColor: Color(0xFFFFFFFF),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            height: 48,
            borderRadius: 20.0,
            gradient: LinearGradient(
              colors: [Color(0xFF107B8A), Color(0xFF7A66EC)],
            ),
          ),
        ),
      ],
    );
  }
}
