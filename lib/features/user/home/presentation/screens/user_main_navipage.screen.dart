import 'package:flutter/material.dart';

import '../../../../../core/constants/theme.dart';
import 'package:here4u/features/user/home/presentation/widgets/pet_view.widget.dart';
import '../widgets/main_function_tabbar.widget.dart';
import '../widgets/user_home_header.widget.dart';

class UserMainNaviPage extends StatefulWidget {
  const UserMainNaviPage({super.key});

  @override
  State<UserMainNaviPage> createState() => _UserMainNaviPageState();
}

class _UserMainNaviPageState extends State<UserMainNaviPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryClr,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserHomeHeaderWidget(),
              const SizedBox(height: 20.0),
              PetViewWidget(),
              const SizedBox(height: 10.0),
              MainFunctionButton(),
            ],
          ),
        ),
      ),
    );
  }
}



