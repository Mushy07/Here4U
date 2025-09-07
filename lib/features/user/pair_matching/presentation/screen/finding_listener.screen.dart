import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/constants/theme.dart';
import '../../../home/presentation/widgets/user_home_header.widget.dart';
import '../../widget/matching_button.widget.dart';
import '../../widget/matching_instruc.widget.dart';
import '../../widget/matching_title.widget.dart';
import '../../widget/matching_progress.widget.dart';
import 'listener_found.screen.dart';
import 'matching_listener.screen.dart';

class FindingListenerPage extends StatefulWidget {
  const FindingListenerPage({super.key});

  @override
  State<FindingListenerPage> createState() => _FindingListenerPageState();
}

class _FindingListenerPageState extends State<FindingListenerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Timer? _timer; // <-- add a Timer

  @override
  void initState() {
    super.initState();

    // Animation setup
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();

    // Auto navigation after 5 seconds
    _timer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ListenerFoundPage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel(); // <-- cancel timer when disposing
    super.dispose();
  }

  void _onCancel() {
    _timer?.cancel(); // <-- cancel the timer
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PairMatchingMainPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserHomeHeaderWidget(),
              const SizedBox(height: 50),
              FindTitle(),
              const SizedBox(height: 10),
              const MatchingDescription(
                text:
                "We’re connecting you with a certified Good Listener who can provide support",
              ),
              const SizedBox(height: 20),
              MatchingProgressBar(controller: _controller),
              const SizedBox(height: 20),
              MatchingButton(
                title: "Cancel",
                onTap: _onCancel, // <-- call cancel method
              ),
            ],
          ),
        ),
      ),
    );
  }
}
