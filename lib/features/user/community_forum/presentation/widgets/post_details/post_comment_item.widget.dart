import 'package:flutter/material.dart';
import '../../../domain/models/post.model.dart';


class PostCommentItem extends StatelessWidget {
  final Comment comment;

  const PostCommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(child: Icon(Icons.person, size: 16)),
              const SizedBox(width: 8),
              const Text("Anonymous",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              if (comment.tags.isNotEmpty) ...[
                const SizedBox(width: 6),
                Wrap(
                  spacing: 4,
                  children: comment.tags
                      .map((tag) => Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      tag,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ))
                      .toList(),
                ),
              ],
            ],
          ),
          const SizedBox(height: 2),
          Text(comment.content),
          const SizedBox(height: 2),
          Text(
            comment.time,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
