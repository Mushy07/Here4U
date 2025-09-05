import 'package:flutter/material.dart';
import 'presentation/community_forum/community_forum.screen.dart';
import 'presentation/mood_diary/mood_diary.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Community Forum Test',
      home: const CommunityForumScreen(),
    );
  }
}
