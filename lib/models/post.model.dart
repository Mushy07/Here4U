class Post {
  final String title;
  final String description;
  final List<String> tags;       // always non-null at runtime
  final String time;
  final int replies;
  final List<Comment> comments;  // always non-null at runtime

  Post({
    required this.title,
    required this.description,
    List<String>? tags,          // accept nullable
    required this.time,
    required this.replies,
    List<Comment>? comments,     // accept nullable
  })  : tags = tags ?? const [],
        comments = comments ?? const [];
}

class Comment {
  final String content;
  final String time;
  final List<String> tags;       // e.g., ["Good Listener"]

  Comment({
    required this.content,
    required this.time,
    List<String>? tags,          // accept nullable
  }) : tags = tags ?? const [];
}
