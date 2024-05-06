import 'package:fineace/constants/app_color.dart';
import 'package:fineace/features/onboarding_section/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
        Future.delayed(const Duration(seconds: 3),(){
          Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen())
          );
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appPrimaryColor,
      body: Center(
        child: Text(
            "Fineace",
          style: GoogleFonts.urbanist(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
