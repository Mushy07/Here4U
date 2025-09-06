import 'package:flutter/material.dart';

class FindingMatchPage extends StatefulWidget {
  const FindingMatchPage({super.key});

  @override
  State<FindingMatchPage> createState() => _FindingMatchPageState();
}

class _FindingMatchPageState extends State<FindingMatchPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), // 5 seconds to complete
    )..repeat(); // keep looping
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildGradientProgressBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return LayoutBuilder(
            builder: (context, constraints) {
              double width = constraints.maxWidth * _controller.value;

              return Container(
                height: 10,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildGradientButton(String text, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5EEDF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFD5EEDF),
        elevation: 0,
        centerTitle: false,
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
        padding: const EdgeInsets.only(bottom: 100), // 👈 moves content up
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.access_time, size: 100, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              "Finding Your Match",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "We’re connecting you with a certified Good Listener who can provide support",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 30),

            // 🔥 Custom gradient progress bar
            _buildGradientProgressBar(),
            const SizedBox(height: 10),
            const Text("Almost there.....",
                style: TextStyle(color: Colors.black54)),

            const SizedBox(height: 30),
            _buildGradientButton("Cancel", () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: FindingMatchPage(),
));
