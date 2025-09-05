import 'package:flutter/material.dart';
import '../../../../models/post.model.dart';

class PostCommentsHeader extends StatelessWidget {
  final List<Comment> filteredComments;
  final bool showOnlyGoodListeners;
  final ValueChanged<bool> onToggle;

  const PostCommentsHeader({
    super.key,
    required this.filteredComments,
    required this.showOnlyGoodListeners,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Comments (${filteredComments.length})',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            const Text("Good Listener only"),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: showOnlyGoodListeners,
                activeColor: Colors.teal,
                onChanged: onToggle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
