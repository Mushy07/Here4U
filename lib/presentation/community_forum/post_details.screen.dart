import 'package:flutter/material.dart';
import '../../models/post.model.dart';

class PostDetailsScreen extends StatefulWidget {
  final Post post;

  const PostDetailsScreen({super.key, required this.post});

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  bool showOnlyGoodListeners = true; // ✅ default ON

  @override
  Widget build(BuildContext context) {
    // ✅ Filter comments if toggle is ON
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
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, size: 28),
                ),
              ),
              const SizedBox(height: 16),

              // Title
              Text(
                widget.post.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 12),

              // Author row
              Row(
                children: [
                  const CircleAvatar(child: Icon(Icons.person)),
                  const SizedBox(width: 8),
                  const Text(
                    "Anonymous",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.post.time,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Tags
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 8,
                children: widget.post.tags
                    .map(
                      (tag) => Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                    Text(tag, style: const TextStyle(fontSize: 12)),
                  ),
                )
                    .toList(),
              ),
              const SizedBox(height: 12),

              // Post description
              Text(
                widget.post.description,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 16),

              const Divider(),

              // Comments header + toggle
              Row(
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
                        scale: 0.8, // 👈 make it smaller (0.8 = 80% size)
                        child: Switch(
                          value: showOnlyGoodListeners,
                          activeColor: Colors.teal,
                          onChanged: (val) {
                            setState(() {
                              showOnlyGoodListeners = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Comment input
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Share your thoughts and support...',
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.send),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Comments list
              ...filteredComments.map(
                    (c) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                              child: Icon(Icons.person, size: 16)),
                          const SizedBox(width: 8),
                          const Text(
                            "Anonymous",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (c.tags.isNotEmpty) ...[
                            const SizedBox(width: 6),
                            Wrap(
                              spacing: 4,
                              children: c.tags
                                  .map(
                                    (tag) => Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[100],
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    tag,
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              )
                                  .toList(),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(c.content),
                      const SizedBox(height: 2),
                      Text(
                        c.time,
                        style: const TextStyle(
                            fontSize: 10, color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                    ],
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
