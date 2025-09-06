import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/core/widgets/bottom_navibar.widget.dart';
import 'package:here4u/core/widgets/button.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_header.widget.dart';
import 'package:here4u/features/registration/presentation/widgets/registration_pet_selection/pet_selection.widget.dart';

class RegisterPetSelectionScreen extends StatelessWidget {
  const RegisterPetSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              RegistrationHeaderWidget(title: "Register"),
              const SizedBox(height: 70.0),
              PetSelectionWidget(),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: MyButton(
                    label: "",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNaviBar(),
                        ),
                      );
                    },
                    width: 56,
                    height: 56,
                    borderRadius: 28,
                    bgColor: Colors.black,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
