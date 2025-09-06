import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/button.dart';

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
            onTap: () {},
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
            onTap: () {},
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
