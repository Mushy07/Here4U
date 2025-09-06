import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/core/widgets/logo.widget.dart';

class RegistrationHeaderWidget extends StatelessWidget {
  final String title;
  const RegistrationHeaderWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Align(alignment: Alignment.topLeft, child: Logo()),
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentGeometry.topCenter,
          children: [
            Positioned(
              bottom: -55,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.6)),
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: subHeadingStyle,
                  // TextStyle(
                  //   fontWeight: FontWeight.w800,
                  //   fontSize: 28,
                  //   color: Colors.black,
                  // ),
                ),
              ),
            ),
            Image.asset(
              'assets/images/shared/all_pets.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}
