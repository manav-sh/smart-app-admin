import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/textstyles.dart';
import 'package:admin_app/screens/pdfview.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NewOrganisation extends StatelessWidget {
  const NewOrganisation({super.key});
  static const List orgs = [
    {
      'name': 'Manav NGO',
      'location': 'Bapunagar Ahmedabad',
      'mobile': '+91 7545454545',
    },
    {
      'name': 'Harsh NGO',
      'location': 'Ranip Ahmedabad',
      'mobile': '+91 6545454545',
    },
    {
      'name': 'Jinal NGO',
      'location': 'Deesa, gujarat',
      'mobile': '+91 8545454545',
    },
    {
      'name': 'Priya NGO',
      'location': 'Dehgam Ahmedabad',
      'mobile': '+91 9545454545',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Organisation Request'),
        backgroundColor: bgDark,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Expanded(
          child: ListView(
            children: [
              for (int i = 0; i < orgs.length; i++) orgCard(context, orgs[i])
            ],
          ),
        ),
      ),
    );
  }

  Widget orgCard(context, orgs) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () {
            showMaterialModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              builder: (context) => Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                height: (Get.height / 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(orgs['name'], softWrap: true, style: mainheadingStyle),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Icon(FontAwesome.map),
                          ),
                          Text(
                            orgs['location'],
                            style: subheadStyle,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Icon(FontAwesome5.phone),
                          ),
                          Text(orgs['mobile'], style: subheadStyle)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(PdfViewer());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: bgDark,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          color: bgLight,
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: const Text('Proof of NGO'),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Get.width / 2.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: bgDark,
                            ),
                            child: Text('Approve', style: headingWhiteStyle),
                          ),
                        ),
                        SizedBox(
                          width: Get.width / 2.5,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: bgDark,
                            ),
                            child: Text('Deny', style: headingWhiteStyle),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 15,
                    bottom: 5,
                  ),
                  child:
                      Text(orgs['name'], softWrap: true, style: headingStyle),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    orgs['location'],
                    softWrap: true,
                    style: subheadStyle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child:
                      Text(orgs['mobile'], softWrap: true, style: subheadStyle),
                ),
                InkWell(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: bgBlueLight,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text('View More'),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
