import '../models/post.model.dart';

final List<Post> dummyPosts = [
  Post(
    title: "Feeling overwhelmed with finals approaching",
    description:
    "Anyone else feeling the pressure? Looking for study tips and ways to manage stress... Finals are just around the corner, and honestly, it feels like everything is piling up at once—assignments, revision, group projects, and the constant worry about grades. I’m finding it hard to focus because my mind keeps jumping from one task to another, and sometimes I just end up doing nothing at all. I know I’m not the only one going through this, but it feels really isolating at times. How do you all manage to stay calm and keep your productivity up when it feels like there aren’t enough hours in the day?",
    tags: ["Academic Stress", "Finals"],
    time: "2 hours ago",
    replies: 2,
    comments: [
      Comment(
        content: "You’re not alone! Try making a schedule.",
        time: "1 hour ago",
        tags: ["Good Listener"], // ✅ shows beside Anonymous
      ),
      Comment(
        content: "Take breaks and don’t overwork yourself.",
        time: "30 mins ago",
      ),
    ],
  ),
  Post(
    title: "Tips for dealing with social anxiety in class",
    description:
    "I’ve been struggling to participate in discussions. Any advice from fellow students?",
    tags: ["Social Anxiety", "Academic"],
    time: "1 day ago",
    replies: 2,
    comments: [
      Comment(content: "Start by speaking up once per class.", time: "22 hours ago"),
      Comment(
        content: "Practice with friends first.",
        time: "20 hours ago",
        tags: ["Good Listener"], // ✅ example with tag
      ),
    ],
  ),
];
