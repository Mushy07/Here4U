import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/button.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_form_field.widget.dart';

import '../../../../core/widgets/bottom_navibar.widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        RegistrationFormFieldWidget(hintText: 'Username'),
        RegistrationFormFieldWidget(hintText: 'Password'),

        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyButton(
            label: "Login",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNaviBar()),
              );
            },
            height: 48,
            gradient: LinearGradient(
              colors: [Color(0xFF107B8A), Color(0xFF7A66EC)],
            ),
            textColor: Colors.white,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
