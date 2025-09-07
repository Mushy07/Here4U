import 'package:flutter/material.dart';
import '../../../../../core/widgets/bottom_navibar.widget.dart';
import '../../widget/chat_appbar.widget.dart';
import '../../widget/chat_input.widget.dart';
import '../../widget/chat_messages.widget.dart';

class UserChatPage extends StatefulWidget {
  const UserChatPage({super.key});

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      _messages.add(_controller.text.trim());
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          /// Back button navigates to BottomNaviBar and clears all previous pages
          ChatAppBar(onBack: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const BottomNaviBar()),
                  (route) => false, // remove all previous routes
            );
          }),
          Expanded(
            child: SafeArea(
              top: false,
              child: ChatMessages(messages: _messages),
            ),
          ),
          ChatInput(controller: _controller, onSend: _sendMessage),
        ],
      ),
    );
  }
}
