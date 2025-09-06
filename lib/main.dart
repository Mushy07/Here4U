import 'package:flutter/material.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/AcceptDeclinePage.screen.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/char2.screen.dart';
import 'package:here4u/features/user/chat_feature/presentation/screen/chat1.screen.dart';
import 'package:here4u/features/user/match_ui/presentation/match.screen.dart';

import 'features/user/chat_feature/presentation/screen/chat.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ListenerFoundPage(),
    );
  }
}


