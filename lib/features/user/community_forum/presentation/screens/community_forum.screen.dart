import 'package:flutter/material.dart';
import '../../domain/models/dummy_data.dart';
import '../../domain/models/post.model.dart';
import '../widgets/community_forum/post_card.widget.dart';
import '../widgets/community_forum/share_story_button.widget.dart';
import '../widgets/community_forum/share_story_dialog.widget.dart';
import '../widgets/community_forum/community_forum_header.widget.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const CommunityForumHeader(),
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
      ),
    );
  }
}
