import 'package:flutter/material.dart';

class RegistrationLandingDetailsWidget extends StatelessWidget {
  const RegistrationLandingDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Heal Together, Grow Together —\nwith a Friend, a Pet, and a Community.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF222222),
          ),
        ),
        const SizedBox(height: 20.0),
        DetailCard(
          title: 'Safe & Anonymous',
          description: 'AI-monitored spaces ensure your privacy and safety.',
        ),
        const SizedBox(height: 10.0),
        DetailCard(
          title: 'Peer Matching',
          description: 'Connect with trained student listeners who understand',
        ),
        const SizedBox(height: 10.0),
        DetailCard(
          title: '24/7 Support',
          description: 'Community forum available anytime you need it',
        ),
      ],
    );
  }
}

class DetailCard extends StatelessWidget {
  const DetailCard({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: Color(0xD9D9D9D9),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF5F5F63),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(color: Color(0xFF5F5F63), fontSize: 14),
          ),
        ],
      ),
    );
  }
}
