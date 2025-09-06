import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here4u/core/widgets/bottom_navibar.widget.dart';
import 'package:here4u/features/registration/presentation/screens/registration.screen.dart';
import 'package:here4u/features/registration/presentation/screens/registration_landing.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
      // RegistrationLandingScreen(),
      // BottomNaviBar(),
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
