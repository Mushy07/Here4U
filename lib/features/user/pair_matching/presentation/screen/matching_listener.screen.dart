import 'package:flutter/material.dart';
import '../../../../../core/constants/theme.dart';

import '../../widget/matching_button.widget.dart';
import '../../widget/matching_instruc.widget.dart';
import '../../widget/pairmatching_header.widget.dart';
import '../../widget/pairmatching_title.widget.dart';
import 'finding_listener.screen.dart';

class PairMatchingMainPage extends StatefulWidget {
  const PairMatchingMainPage({super.key});

  @override
  State<PairMatchingMainPage> createState() => _PairMatchingMainPageState();
}

class _PairMatchingMainPageState extends State<PairMatchingMainPage> {
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
              PairMatchingHeader(),
              const SizedBox(height: 50),
              FindListenerTitle(),
              const SizedBox(height: 10),
              MatchingButton(
                title: "Start Matching",
                onTap: () {
                  // Use pushReplacement to avoid stacking multiple FindingListenerPages
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindingListenerPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const MatchingDescription(
                text: "We’ll connect you with a listener who’s closer to your profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
