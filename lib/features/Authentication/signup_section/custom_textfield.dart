import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText,
    this.prefixIcon,
  });

  final String hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 12.0 ),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.urbanist(
                color: AppColor.appHintTextColor
            ),
            prefixIcon: prefixIcon,
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(8.0)
        ),
      ),
    );
  }
}
