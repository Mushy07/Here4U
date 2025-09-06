import 'package:flutter/material.dart';
import 'package:here4u/core/constants/theme.dart';
import 'package:here4u/core/widgets/button.dart';
import 'package:here4u/features/registration/presentation/screens/register_pet_selection.screen.dart';
import 'package:here4u/features/registration/presentation/widgets/registration/registration_form_field.widget.dart';

import '../../../../../core/widgets/bottom_navibar.widget.dart';

class RegistrationFormWidget extends StatefulWidget {
  const RegistrationFormWidget({super.key});

  @override
  State<RegistrationFormWidget> createState() => _RegistrationFormWidgetState();
}

class _RegistrationFormWidgetState extends State<RegistrationFormWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> genders = ['Female', 'Male'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: genders.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Personal Details',
          style: subHeadingStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        RegistrationFormFieldWidget(hintText: 'Username'),
        RegistrationFormFieldWidget(hintText: 'Name'),
        RegistrationFormFieldWidget(hintText: 'Age'),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xFFDDEEE5),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Text(
                'Gender',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF6A6A6A),
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: TabBar(
                  dividerHeight: 0.0,
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: Color(0xFFE5E2E6),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelColor: Color(0xFF6A6A6A),
                  unselectedLabelColor: Color(0xFF6A6A6A).withOpacity(0.5),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  tabs: genders.map((g) => Tab(text: g)).toList(),
                  indicatorSize: TabBarIndicatorSize.tab,
                  splashFactory: NoSplash.splashFactory,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xFFDDEEE5),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: SizedBox(
            height: 50,
            child: Row(
              children: [
                Text(
                  'Education/ Institution',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A6A6A),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_drop_down, color: Color(0xFF6A6A6A)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyButton(
            label: "Register",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPetSelectionScreen(),
                ),
              );
            },
            height: 48,
            gradient: LinearGradient(
              colors: [Color(0xFF107B8A), Color(0xFF7A66EC)],
            ),
            textColor: Colors.white,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
