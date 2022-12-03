import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class RecievedCard extends StatelessWidget {
  const RecievedCard({super.key, required this.category, required this.name});
  final String category;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(
        left: 10,
        top: 15,
        right: 10,
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manav Shah',
                        style: headingStyle,
                      ),
                      Text(
                        '1 hour ago',
                        style: subheadStyle,
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    tags('Food', Colors.white, Colors.black, true, true),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              style: GoogleFonts.dmSans(fontSize: 15),
              'content goes here.. content goes here.. content goes here.. content goes here.. content goes here.. content goes here..content goes here.. content goes here..',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  'https://www.blueosa.com/wp-content/uploads/2020/01/the-best-top-10-indian-dishes.jpg',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child:
                      Text('Donated to:', softWrap: true, style: headingStyle),
                ),
                Text('Manav NGO', softWrap: true, style: subheadStyle),
              ],
            ),
          ),
          Container(
            color: bgBlueLight,
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const Text('View Details'),
          ),
        ],
      ),
    );
  }

  Container tags(
    String title,
    Color colorbg,
    Color colortext,
    bool shadow,
    bool logo,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: colorbg,
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          const BoxShadow(
            color: bgLight,
            blurRadius: 15.0,
          )
        ],
      ),
      child: Row(
        children: [
          logo
              ? Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(RpgAwesome.knife_fork),
                )
              : Container(),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
