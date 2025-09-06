class Post {
  final String title;
  final String description;
  final List<String> tags;
  final String time;
  final int replies;
  final List<Comment> comments;

  Post({
    required this.title,
    required this.description,
    List<String>? tags,
    required this.time,
    required this.replies,
    List<Comment>? comments,
  })  : tags = tags ?? const [],
        comments = comments ?? const [];
}

class Comment {
  final String content;
  final String time;
  final List<String> tags;

  Comment({
    required this.content,
    required this.time,
    List<String>? tags,
  }) : tags = tags ?? const [];
}
