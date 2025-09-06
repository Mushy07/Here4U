import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here4u/core/widgets/bottom_navibar.widget.dart';
import 'features/user/community_forum/presentation/screens/community_forum.screen.dart';
import 'features/user/diary/presentation/screens/mood_diary.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNaviBar(),
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
