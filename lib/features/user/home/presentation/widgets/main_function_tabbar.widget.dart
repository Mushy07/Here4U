import 'package:flutter/material.dart';
import 'package:here4u/features/user/home/presentation/widgets/support_option.widget.dart';

import 'feelings_recorder.widget.dart';

class MainFunctionButton extends StatelessWidget {
  const MainFunctionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child:
      DefaultTabController(

        length: 2,
        child: Column(
          children: [
            TabBar(


              tabs: [

                Tab(text: 'Share Feelings'),
                Tab(text: 'Need Support'),
              ],
            ),
            SizedBox(
              height: 300,
              child: TabBarView(
                children: [
                  Center(child: FeelingsRecorder()),
                  Center(child: SupportOption()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
