import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';

class PetViewWidget extends StatelessWidget {
  const PetViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            constraints: const BoxConstraints(maxWidth: 200),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Text(
              "How are you feeling today?",
              style: whiteHeading3Style,
            ),
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/white_shadow.png",
                height: 280,
                color: Colors.white.withOpacity(0.3),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/cat_pet.png", height: 240),
            ),
          ],
        ),
      ],
    );
  }
}
