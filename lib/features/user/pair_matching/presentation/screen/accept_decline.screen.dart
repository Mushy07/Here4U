import 'package:flutter/material.dart';

import '../../../../../core/constants/theme.dart';
import '../../../home/presentation/widgets/user_home_header.widget.dart';
import '../../widget/acceptanddecline_button.widget.dart';
import '../../widget/acceptanddecline_title.widget.dart';
import '../../widget/matching_instruc.widget.dart';

class AcceptDeclinePage extends StatefulWidget {
  const AcceptDeclinePage({super.key});

  @override
  State<AcceptDeclinePage> createState() => _AcceptDeclinePageState();
}

class _AcceptDeclinePageState extends State<AcceptDeclinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryClr,
        body: SafeArea(
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,                    children: [
                  UserHomeHeaderWidget(),
                  const SizedBox(height: 50),
                  AcceptDeclineTitle(),
                  const SizedBox(height: 20),
                  const MatchingDescription(
                    text: "Someone out there is counting on you",
                  ),
                  const SizedBox(height: 20),

                  AcceptDeclineButtons(
                    onAccept: () {
                      print("Accepted");
                    },
                    onDecline: () {
                      print("Declined");
                    },
                  ),






                ]
                )
            )
        )

    );
  }
}
