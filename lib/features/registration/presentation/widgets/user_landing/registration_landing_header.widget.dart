import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/logo.widget.dart';

class RegistrationLandingHeaderWidget extends StatelessWidget {
  const RegistrationLandingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.center, child: Logo(size: 50.0)),
        const SizedBox(height: 20.0),
        Image.asset('assets/images/shared/all_pets.png', fit: BoxFit.contain),
      ],
    );
  }
}
