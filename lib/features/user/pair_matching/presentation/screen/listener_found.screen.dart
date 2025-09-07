import 'package:flutter/material.dart';

import '../../../../../core/constants/theme.dart';
import '../../../home/presentation/widgets/user_home_header.widget.dart';
import '../../widget/finding_listener_title.widget.dart';
import '../../widget/matching_button.widget.dart';
import '../../widget/matching_instruc.widget.dart';
import 'chatpage.screen.dart';

class ListenerFoundPage extends StatefulWidget {
  const ListenerFoundPage({super.key});

  @override
  State<ListenerFoundPage> createState() => _ListenerFoundPageState();
}

class _ListenerFoundPageState extends State<ListenerFoundPage> {
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
                  FindListenerTitle(),
                  const SizedBox(height: 10),
                  const MatchingDescription(
                    text: "You've connected to a listener",
                  ),
                  const SizedBox(height: 20),

                  MatchingButton(
                    title: "Start Chat",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserChatPage(),
                        ),
                      );
                    },
                  ),




                ]
                )
            )
        )

    );
  }
}
