import 'package:admin_app/cards/recievedcard.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Recieved extends StatelessWidget {
  const Recieved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Recieved Donations'),
        backgroundColor: bgDark,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: const RecievedCard(category: 'food', name: 'Harsh Prajapati'),
      ),
    );
  }
}
