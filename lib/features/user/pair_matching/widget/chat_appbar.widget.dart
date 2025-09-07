import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/constants/theme.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const ChatAppBar({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFE8F5E9),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: AppBar(
        backgroundColor: const Color(0xFFE8F5E9),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile_picture.png",
                  fit: BoxFit.cover,
                  width: 36,
                  height: 36,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Anonymous User", style: heading2Style),
                Text("AI monitored for safety", style: chatroomDesc),
              ],
            ),
          ],
        ),

        /// Custom back button
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: onBack ?? () => Navigator.pop(context),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
