import 'package:fineace/constants/app_color.dart';
import 'package:fineace/features/Authentication/signup_section/explore_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  final defaultPinTheme = PinTheme(
    width: 75,
    height: 60,
    textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade300)
    ),
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.appBackgroundColor,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.info_outline_rounded,
              size: 25,
              color: Color(0xFF292D32),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "You're almost there!",
                  style: GoogleFonts.urbanist(
                      color: AppColor.appColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: RichText(
                  text: TextSpan(
                      style: GoogleFonts.lexendDeca(
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                            text: "You only have to enter an OTP code,we sent via Email, to your registered email",
                            style: GoogleFonts.urbanist(
                                color: AppColor.appVerifyColor
                            )
                        ),
                        TextSpan(
                            text: " hub@academy.com",
                            style: GoogleFonts.urbanist(
                              color: AppColor.appColor,
                            )
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              Center(
                child: Text(
                  "OTP verification code",
                  style: GoogleFonts.urbanist(
                      color: AppColor.appVerifyColor
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Pinput(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                          color: Color(0xFFFFF3E5),
                          border: Border.all(
                              color: AppColor.appPrimaryColor,
                              width: 1.0
                          )
                      )
                  ),
                  onCompleted: (pin) => debugPrint(pin),
                  showCursor: true,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you didn't recieve a OTP?",
                    style:  GoogleFonts.urbanist(
                        color: AppColor.appVerifyColor
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "Resend",
                        style:  GoogleFonts.urbanist(
                            color: AppColor.appPrimaryColor
                        ),
                      )
                  )
                ],
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 30.0),
            //alignment: Alignment.center,
            width: 350,
            height: 48,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExplorePage())
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.appPrimaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))

                ),
                child: Text(
                  "Verification",
                  style: GoogleFonts.lexendDeca(),
                )
            ),
          ),
        ],
      ),
    );
  }
}
