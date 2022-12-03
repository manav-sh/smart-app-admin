import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PostTagContainer extends StatelessWidget {
  const PostTagContainer({
    Key? key,
    this.postTagIcon,
    required this.postTagTitle,
    this.postTagTitleColor,
    this.postTagDecoration,
    required this.postTagElevation,
  }) : super(key: key);

  final IconData? postTagIcon;
  final String postTagTitle;
  final Color? postTagTitleColor;
  final Decoration? postTagDecoration;
  final bool postTagElevation;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: postTagElevation ? 1 : 0,
      child: Container(
        // color: Colors.black12,
        decoration: postTagDecoration,
        child: Row(
          children: [
            Visibility(
              visible: postTagIcon != null ? true : false,
              child: Icon(
                postTagIcon,
                size: 15,
              ),
            ),
            Text(
              postTagTitle,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: postTagTitleColor,
              ),
            ).paddingSymmetric(horizontal: 3)
          ],
        ).paddingSymmetric(horizontal: 8, vertical: 3.5),
      ),
    ).marginAll(3);
  }
}
