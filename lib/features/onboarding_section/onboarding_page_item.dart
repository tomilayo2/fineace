import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPageItem extends StatelessWidget {
  const OnboardingPageItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image),
                    const SizedBox(height: 30,),
                    Text(
                      title,
                      style: GoogleFonts.urbanist(
                          fontSize: 25,
                          color: const Color(0xFFFF8600),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      subtitle,
                      style: GoogleFonts.urbanist(
                          fontSize: 16,
                          color: Colors.black54
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                  ),
                  children: [
                    buildTextSpan(
                      text: "By logging in or registering, you agree to",
                      color: const Color(0xFF999999)
                    ),
                    TextSpan(
                        text: " Terms of Service",
                        style: GoogleFonts.urbanist(
                            color: const Color(0xFFFF403D)
                        )
                    ),
                    TextSpan(
                        text: " and",
                        style: GoogleFonts.urbanist(
                            color: const Color(0xFF999999)
                        )
                    ),
                    TextSpan(
                        text: " Privacy Policy",
                        style: GoogleFonts.urbanist(
                            color: const Color(0xFFFF403D)
                        )
                    ),
                  ]
              ),
            ),
          )

        ],
      ),
    );
  }

  TextSpan buildTextSpan({required String text, Color? color}) {
    return TextSpan(
                      text: text,
                      style: GoogleFonts.urbanist(
                          color: color
                      )
                  );
  }
}
