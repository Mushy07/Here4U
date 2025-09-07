import 'package:flutter/material.dart';
import 'package:here4u/features/user/community_forum/presentation/screens/community_forum.screen.dart';
import 'package:here4u/features/user/profile/presentation/screens/user_profile.screen.dart';
import '../../features/user/diary/presentation/screens/user_main_diarypage.screen.dart';
import '../../features/user/home/presentation/screens/user_main_navipage.screen.dart';
import '../../features/user/pair_matching/presentation/screen/matching_listener.screen.dart';


class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _currentIndex = 2;
  final List<Widget> _pages = [
    PairMatchingMainPage(),
    MoodDiaryPage(),
    UserMainNaviPage(),
    UserProfileScreen(),
    CommunityForumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Diary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Forum',
          ),
        ],
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(body: Center(child: Text("Support Page")));
}

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(body: Center(child: Text("Forum Page")));
}
