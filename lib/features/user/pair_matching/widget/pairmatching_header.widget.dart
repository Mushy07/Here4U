import 'package:flutter/material.dart';
import 'package:here4u/core/widgets/bottom_navibar.widget.dart';
import 'package:here4u/core/widgets/logo.widget.dart';

class PairMatchingHeader extends StatelessWidget {
  const PairMatchingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNaviBar(),
                ),
              );
            },
          ),

          const Logo(),
        ],
      ),
    );
  }
}
