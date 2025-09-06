import 'package:flutter/material.dart';

class AcceptDeclinePage extends StatefulWidget {
  const AcceptDeclinePage({super.key});

  @override
  State<AcceptDeclinePage> createState() => _AcceptDeclinePageState();
}

class _AcceptDeclinePageState extends State<AcceptDeclinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5EEDF), // Light green background

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFD5EEDF),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.favorite_border, color: Colors.teal),
            const SizedBox(width: 6),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.teal, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: const Text(
                "Here4You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white, // must be white so gradient shows
                ),
              ),
            ),
          ],
        ),
      ),


        body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // User avatar
            const Icon(Icons.account_circle, size: 120, color: Colors.grey),

            const SizedBox(height: 15),

            // Username
            const Text(
              "Anonymous",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Someone out there is\ncounting on you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 40),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Accept Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    minimumSize: const Size(120, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Accept pressed
                  },
                  child: const Text(
                    "Accept",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),

                const SizedBox(width: 20),

                // Decline Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300,
                    minimumSize: const Size(120, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Decline pressed
                  },
                  child: const Text(
                    "Decline",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
