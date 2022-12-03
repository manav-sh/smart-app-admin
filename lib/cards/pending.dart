import 'package:admin_app/cards/post_details_modal.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Pending extends StatelessWidget {
  const Pending({super.key, required this.category, required this.name});
  // ignore: prefer_typing_uninitialized_variables
  final category, name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Row(
                  //Profile pic, name and time contai
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
                          name,
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
                      tags(category, Colors.white, Colors.black, true, true),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              style: GoogleFonts.dmSans(fontSize: 15),
              'content goes here.. content goes here.. content goes here.. content goes here and blah blah blah',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: Get.width,
                height: 150,
                child: Image.network(
                  'https://www.blueosa.com/wp-content/uploads/2020/01/the-best-top-10-indian-dishes.jpg',
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
            ),
          ),
          InkWell(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            onTap: () {
              DetailModal.foodModal(context);
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: bgBlueLight,
              ),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text('View Details'),
            ),
          )
        ],
      ),
    );
  }

  static Widget tagTile(IconData icondata, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      margin: const EdgeInsets.only(bottom: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: tileBG),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icondata,
            size: 20,
            color: text3D,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: postTileStyle,
          ),
        ],
      ),
    );
  }

  static Widget tags(
    String title,
    Color colorbg,
    Color colortext,
    bool shadow,
    bool logo,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorbg,
        boxShadow: const [
          BoxShadow(
            color: bgLight,
            blurRadius: 20.0,
          )
        ],
      ),
      child: Row(
        children: [
          logo
              ? Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    RpgAwesome.knife_fork,
                    size: 18,
                  ),
                )
              : Container(),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 14, color: colortext),
          ),
        ],
      ),
    );
  }
}
