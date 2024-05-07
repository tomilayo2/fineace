import 'package:fineace/features/onboarding_session/onboarding_screen_one.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //final _controller = PageController();
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            SafeArea(
              child: TextButton(
                  onPressed:(){},
                  child: Row(
                    children: [
                      Text(
                          "Skip",
                        style: TextStyle(
                          color: Colors.deepOrange.shade500,
                          fontSize: 20
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.deepOrange.shade500,
                        size: 15,
                      )
                    ],
                  )
              ),
            )
          ],
        ),

      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              OnboardingScreenOne(
                image: 'assets/images/image_one.png',
                title: 'Savings Management',
                subtitle: 'Track your savings and build the habits saving money',
              ),
              OnboardingScreenOne(
                image: 'assets/images/image_two.png',
                title: 'Make Payment Easier',
                subtitle: 'Find new opportunities to make your life better',
              ),
              OnboardingScreenOne(
                image: 'assets/images/image_three.png',
                title: 'Grow Up Your Money',
                subtitle: 'Make Investment choice to grow your money',
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.5),
            child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepOrange.shade500,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 10,
                spacing: 8,
              ),
            ),
          )
        ],
      )
    );
  }
}

