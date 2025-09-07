import 'package:flutter/material.dart';
import '../../../domain/models/post.model.dart';

class PostDescription extends StatelessWidget {
  final Post post;

  const PostDescription({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Text(
      post.description,
      style: const TextStyle(fontSize: 14),
      textAlign: TextAlign.justify,
    );
  }
}
