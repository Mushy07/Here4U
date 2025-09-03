import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here4u/features/user/feature1/presentation/screen/main_page.screen.dart';
import 'package:here4u/features/user/feature1/presentation/widgets/bottom_navibar.widget.dart';

import 'features/user/feature1/presentation/screen/diary_page.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNaviBar(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}

