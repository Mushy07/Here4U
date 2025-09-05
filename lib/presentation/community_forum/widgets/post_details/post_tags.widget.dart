import 'package:flutter/material.dart';
import '../../../../models/post.model.dart';

class PostTags extends StatelessWidget {
  final Post post;

  const PostTags({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: post.tags
          .map((tag) => Container(
        padding:
        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(tag, style: const TextStyle(fontSize: 12)),
      ))
          .toList(),
    );
  }
}
