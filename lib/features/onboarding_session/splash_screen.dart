import 'package:fineace/features/onboarding_session/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
        Future.delayed(Duration(seconds: 3),(){
          Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => OnboardingScreen())
          );
        });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF450D),
      body: Center(
        child: Text(
            "Fineace",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
