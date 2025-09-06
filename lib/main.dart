import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here4u/core/widgets/bottom_navibar.widget.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/AcceptDeclinePage.screen.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/char2.screen.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/chat1.screen.dart';
import 'package:here4u/features/user/match_ui/presentation/match.screen.dart';

import 'features/user/chat_feature/presentation/screen/chat.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
