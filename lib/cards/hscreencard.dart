import 'package:admin_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key, required this.title, this.routeTo});
  final String title;
  final Widget? routeTo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgLight,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.transparent),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: (MediaQuery.of(context).size.height / 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Get.to(routeTo);
        },
        child: Align(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
