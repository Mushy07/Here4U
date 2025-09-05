import 'package:flutter/material.dart';
import '../../../models/post.model.dart';
import 'widgets/post_details/post_header.widget.dart';
import 'widgets/post_details/post_tags.widget.dart';
import 'widgets/post_details/post_description.widget.dart';
import 'widgets/post_details/post_comments_header.widget.dart';
import 'widgets/post_details/post_comment_input.widget.dart';
import 'widgets/post_details/post_comment_item.widget.dart';

class PostDetailsScreen extends StatefulWidget {
  final Post post;

  const PostDetailsScreen({super.key, required this.post});

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  bool showOnlyGoodListeners = true;

  @override
  Widget build(BuildContext context) {
    final filteredComments = showOnlyGoodListeners
        ? widget.post.comments
        .where((c) => c.tags.contains("Good Listener"))
        .toList()
        : widget.post.comments;

    return Scaffold(
      backgroundColor: const Color(0xFFD6EEDF),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeader(post: widget.post),
              const SizedBox(height: 12),

              PostTags(post: widget.post),
              const SizedBox(height: 12),

              PostDescription(post: widget.post),
              const SizedBox(height: 16),
              const Divider(),

              PostCommentsHeader(
                filteredComments: filteredComments,
                showOnlyGoodListeners: showOnlyGoodListeners,
                onToggle: (val) {
                  setState(() => showOnlyGoodListeners = val);
                },
              ),
              const SizedBox(height: 8),

              const PostCommentInput(),
              const SizedBox(height: 12),
              ...filteredComments.map((c) => PostCommentItem(comment: c)),
            ],
          ),
        ),
      ),
    );
  }
}
