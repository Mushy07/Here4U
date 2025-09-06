import 'package:flutter/material.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_form_field.widget.dart';

class RegistrationFormWidget extends StatelessWidget {
  const RegistrationFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Personal Details', textAlign: TextAlign.center),
          const SizedBox(height: 20.0),
          RegistrationFormFieldWidget(hintText: 'Username'),
          RegistrationFormFieldWidget(hintText: 'Name'),
          RegistrationFormFieldWidget(hintText: 'Age'),
        ],
      ),
    );
  }
}
