import 'package:admin_app/cards/pending.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class DetailModal {
  static Widget donatorListItem(String name, String location) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: headingStyle,
              ),
              Text(
                location,
                style: subheadStyle,
              )
            ],
          ),
          InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xD4D1E6FF),
                borderRadius: BorderRadius.circular(7),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 9,
                horizontal: 12,
              ),
              child: Text(
                'Donate',
                style: GoogleFonts.poppins(
                  color: const Color(0xff324D89),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  //Modal for Food Post
  static void foodModal(context) {
    showMaterialModalBottomSheet(
      context: context,
      bounce: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (context) => Container(
        height: (Get.height / 1.2),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Pending.tags(
                  'Food',
                  const Color(0xffffffff),
                  Colors.black,
                  true,
                  true,
                ),
                Pending.tags(
                  'Approved',
                  const Color(0x32BFFFC2),
                  const Color(0xFF56C761),
                  false,
                  false,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'data',
              textAlign: TextAlign.start,
              style: GoogleFonts.dmSans(
                color: textBlack,
              ),
              softWrap: true,
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: SizedBox(
                width: Get.width,
                height: 150,
                child: Image.network(
                  'https://www.blueosa.com/wp-content/uploads/2020/01/the-best-top-10-indian-dishes.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //The row below is for Address and logo part
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: RichText(
                    //useful to combine text with diff style and wrap like one
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: const Color(0xff3d3d3d),
                        fontSize: 13,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Address: ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              'India Colony, Thakkarnagar, Ahmedabad, Gujarat 380024',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Icon(
                    FontAwesome5.location_arrow,
                    size: 20,
                    color: textBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Pending.tagTile(Icons.group, 'Suitable for: Children'),
            Pending.tagTile(Icons.group, 'Can feed: 10-20 Person'),
            Pending.tagTile(Icons.timer, 'Shelf life: 4 hours'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Requests',
              style: headingStyle,
            ),
            Column(
              children: [
                donatorListItem('Manav Shah', 'Bapunagar, Ahmedabad'),
                donatorListItem('Harsh Prajapati', 'Ranip, Ahmedabad'),
              ],
            )
            // )
          ],
        ),
      ),
    );
  }
}
