import 'package:flutter/material.dart';
import 'pet_selection_card.widget.dart';

class PetSelectionWidget extends StatefulWidget {
  const PetSelectionWidget({super.key});

  @override
  State<PetSelectionWidget> createState() => _PetSelectionWidgetState();
}

class _PetSelectionWidgetState extends State<PetSelectionWidget> {
  int? selectedIndex;

  final List<Map<String, dynamic>> pets = [
    {
      'name': 'Puppyboo',
      'image': 'assets/images/puppyboo_pet.png',
      'bg': Color(0xFFE3EDFB),
    },
    {
      'name': 'Moomoo',
      'image': 'assets/images/moomoo_pet.png',
      'bg': Color(0xFFF4E8F9),
    },
    {
      'name': 'Ponyboo',
      'image': 'assets/images/ponyboo_pet.png',
      'bg': Color(0xFFF6EEC4),
    },
    {
      'name': 'Meowie',
      'image': 'assets/images/cat_pet.png',
      'bg': Color(0xFFF0FAEE),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Choose your pet",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 24),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemCount: pets.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 18,
            crossAxisSpacing: 18,
            childAspectRatio: 0.95,
          ),
          itemBuilder: (context, index) {
            final pet = pets[index];
            return PetSelectionCardWidget(
              name: pet['name'],
              imagePath: pet['image'],
              bgColor: pet['bg'],
              selected: selectedIndex == index,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            );
          },
        ),
      ],
    );
  }
}
