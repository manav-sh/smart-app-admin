import 'package:admin_app/cards/posttag.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationPostContainer extends StatelessWidget {
  const DonationPostContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          // height: 250.h,
          child: Column(
            children: [
              Row(
                children: [
                  const PostTagContainer(
                    postTagTitle: 'Food',
                    postTagElevation: true,
                    postTagIcon: RpgAwesome.knife_fork,
                  ),
                  PostTagContainer(
                    postTagTitle: 'Pending',
                    postTagTitleColor: Colors.red[400],
                    postTagElevation: false,
                    postTagDecoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  PostTagContainer(
                    postTagTitle: 'Requests (1)',
                    postTagElevation: false,
                    postTagTitleColor: const Color.fromRGBO(50, 77, 137, 1),
                    postTagDecoration: BoxDecoration(
                      color: const Color.fromRGBO(209, 230, 255, 0.79),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'We organized a birthday party and there we have leftover fresh food that can feed many people. Details are mentioned here',
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(34, 34, 34, 1),
                    ),
                  ).paddingSymmetric(horizontal: 5),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 7,
                  ),
                  Image.network(
                    'https://www.blueosa.com/wp-content/uploads/2020/01/the-best-top-10-indian-dishes.jpg',
                  )
                ],
              ).marginAll(5),
              PostTagContainer(
                postTagTitle: 'Subhashbridge, RTO Ahmedabad',
                postTagTitleColor: const Color.fromRGBO(61, 61, 61, 1),
                postTagElevation: false,
                postTagIcon: Linecons.location,
                postTagDecoration: BoxDecoration(
                  color: const Color.fromRGBO(143, 165, 178, 0.25),
                  borderRadius: BorderRadius.circular(5),
                ),
              ).marginOnly(left: 5, right: 5, bottom: 7),
              // TextButton(onPressed: () {}, child: const Text('See more')),
            ],
          ),
        ).paddingSymmetric(vertical: 3),
      ).marginSymmetric(vertical: 3),
    );
  }
}
