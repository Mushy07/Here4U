import 'package:flutter/material.dart';
import 'package:here4u/features/user/home/presentation/widgets/support_option.widget.dart';

import '../../../../../core/constants/theme.dart';
import 'feelings_recorder.widget.dart';

class MainFunctionButton extends StatelessWidget {
  const MainFunctionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicator: BoxDecoration(
                color: const Color(0xFF8F8A8A),
                borderRadius: BorderRadius.circular(20),
              ),
              tabs: [
                SizedBox(
                  width: 160,
                  child: Tab(
                    child: Text(
                      'Share Feelings',
                      style: heading3Style,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Tab(
                    child: Text(
                      'Need Support',
                      style: heading3Style,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
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
    );
  }
}
