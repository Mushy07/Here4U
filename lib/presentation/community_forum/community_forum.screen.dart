import 'package:flutter/material.dart';
import '../../core/widgets/custom_app_bar.widget.dart';
import '../../data/dummy_data.dart';
import '../../models/post.model.dart';
import 'widgets/post_card.widget.dart';
import 'widgets/share_story_button.widget.dart';
import 'widgets/share_story_dialog.widget.dart';
import 'post_details.screen.dart';

class CommunityForumScreen extends StatelessWidget {
  const CommunityForumScreen({super.key});

  void _showShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const ShareStoryDialog(),
    );
  }

  void _openPostDetails(BuildContext context, Post post) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => PostDetailsScreen(post: post)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD6EEDF),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 40),
        child: Column(
          children: const [
            SizedBox(height: 40),
            CustomAppBar(title: 'Community Forum'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              'Share experiences, get advice, and support each other anonymously',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ShareStoryButton(
              onPressed: () => _showShareDialog(context),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: dummyPosts.length,
                itemBuilder: (context, index) => PostCard(
                  post: dummyPosts[index],
                  onTap: () => _openPostDetails(context, dummyPosts[index]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Diary'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Forum'),
        ],
      ),
    );
  }
}
