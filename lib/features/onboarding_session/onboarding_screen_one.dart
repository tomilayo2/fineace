import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({
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
        children: [
          SizedBox(height: 80,),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Image.asset(image),
          ),
          SizedBox(height: 10,),
          Text(
            title,
            style: TextStyle(
                fontSize: 25,
                color: Color(0xFFFF8600),
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          // Text(
          //   subtitle,
          //   style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.black54
          //   ),
          // ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                        text: "By logging in or registering, you agree to",
                        style: TextStyle(
                            color: Color(0xFF999999)
                        )
                    ),
                    TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                            color: Color(0xFFFF403D)
                        )
                    ),
                    TextSpan(
                        text: "and",
                        style: TextStyle(
                            color: Color(0xFF999999)
                        )
                    ),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                            color: Color(0xFFFF403D)
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
}
