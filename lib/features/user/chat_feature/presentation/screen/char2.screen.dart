import 'package:flutter/material.dart';

import 'chat.screen.dart';

class ListenerFoundPage extends StatefulWidget {
  const ListenerFoundPage({super.key});

  @override
  State<ListenerFoundPage> createState() => _ListenerFoundPageState();
}

class _ListenerFoundPageState extends State<ListenerFoundPage> {
  int _selectedIndex = 2; // Default selected is Home

  // Navigation bar tap handler
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5EEDF), // light green background
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFD5EEDF),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(Icons.favorite_border, color: Colors.teal),
            const SizedBox(width: 6),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Here",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        fontSize: 20),
                  ),
                  TextSpan(
                    text: "4You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body:Padding(
          padding: const EdgeInsets.only(bottom: 80),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Big user icon with check
            const Icon(Icons.account_circle, color: Colors.green, size: 100),
            const SizedBox(height: 10),
            const Icon(Icons.check_circle, color: Colors.green, size: 30),

            const SizedBox(height: 20),

            // Title
            const Text(
              "Listener Found !",
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.bold, color: Colors.green),
            ),

            const SizedBox(height: 10),

            const Text(
              "You've connected to a listener",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),

            const SizedBox(height: 40),

            // Gradient Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                    },
                  child: const Text(
                    "Start Chat",

                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Support",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Diary",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: "Forum",
          ),
        ],
      ),
    );
  }
}
