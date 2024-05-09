import 'package:fineace/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.image,
    required this.text,
  });

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 48,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              //foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
          ),
          child: Container(
            padding: EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: image
                ),
                Text(
                  text,
                  style: GoogleFonts.lexendDeca(
                      color: AppColor.appColor
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

