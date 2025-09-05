import 'package:flutter/material.dart';

class ShareStoryDialog extends StatelessWidget {
  const ShareStoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFFD6EEDF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: const Text(
        'Share with the community',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Make the text field flexible
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 80,
                maxHeight: 200, // will shrink/expand instead of overflowing
              ),
              child: TextField(
                minLines: 8,
                maxLines: null, // grows until maxHeight
                decoration: InputDecoration(
                  hintText:
                  'Share your thoughts, experiences, or question anonymously...',
                  hintStyle: const TextStyle(fontSize: 14),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Your post will be anonymous. Please avoid sharing personal information',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // TODO: handle posting logic
            Navigator.of(context).pop();
          },
          child: const Text('Post'),
        ),
      ],
    );
  }
}
