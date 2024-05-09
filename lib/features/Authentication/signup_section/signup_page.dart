import 'package:fineace/features/Authentication/signup_section/custom_button.dart';
import 'package:fineace/features/Authentication/signup_section/custom_textfield.dart';
import 'package:fineace/features/Authentication/signup_section/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/app_color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
 bool _isChecked = false;

class _SignUpPageState extends State<SignUpPage> {
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
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text(
                  "Fineace",
                style: GoogleFonts.urbanist(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColor.appPrimaryColor
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Sign up your account",
                style: GoogleFonts.urbanist(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.appColor
                ),
              ),
              SizedBox(height: 25,),
              CustomTextField(
                hintText: 'Username',
                prefixIcon: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: AppColor.appHintTextColor,
                ),
              ),
              CustomTextField(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 30,
                  color: AppColor.appHintTextColor,
                ),
              ),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: AppColor.appHintTextColor,
                ),
              ),
              CustomTextField(
                hintText: 'Confirm password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: AppColor.appHintTextColor,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Transform.scale(
                      scale: 1.1,
                      child: Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue){
                          setState(() {
                            _isChecked = newValue!;
                          });
                        },
                        activeColor: Colors.white,
                        checkColor: AppColor.appPrimaryColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(
                          color: Colors.white,
                          width: 3
                        )
                        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                      ),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          style: GoogleFonts.urbanist(
                              fontSize: 12,
                          ),
                        children: [
                         TextSpan(
                            text: "I agree to the",
                           style: GoogleFonts.urbanist(
                            color: Color(0xFF999999),
                               fontWeight: FontWeight.bold
                           ),
                          ),
                          TextSpan(
                            text: " Terms",
                            style: GoogleFonts.urbanist(
                                color: AppColor.appPrimaryColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(
                            text: " and",
                            style: GoogleFonts.urbanist(
                                color: Color(0xFF999999),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(
                            text: " Conditions",
                            style: GoogleFonts.urbanist(
                                color: AppColor.appPrimaryColor,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ]
                      )
                  )
                ],
              ),
              SizedBox(height: 50,),
              Container(
                width: 350,
                height: 48,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerificationPage()
                          )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.appPrimaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))

                    ),
                    child: Text(
                        "Sign up",
                      style: GoogleFonts.lexendDeca(),
                    )
                ),
              ),
              SizedBox(height: 30,),
              CustomButton(
                image: Image.asset("assets/images/google.png"),
                text: "Sign up with Google",
              ),
              SizedBox(height: 8,),
              CustomButton(
                image: Image.asset("assets/images/ios.png"),
                text: "Sign up with Apple",
              ),
            ],
          )
        ],
      ),
    );
  }
}

