import 'package:fineace/features/onboarding_section/onboarding_page_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
   const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: _currentPage > 0,
          actions: [
            SafeArea(
              child: TextButton(
                  onPressed:(){},
                  child: Row(
                    children: [
                      Text(
                          "Skip",
                        style: GoogleFonts.urbanist(
                          color: Colors.deepOrange.shade500,
                          fontSize: 16
                        ),
                      ),
                      const SizedBox(width: 5,),
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
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
                print('Current page: $_currentPage');
              });
            },
            children: [
              OnboardingPageItem(
                image: 'assets/images/image_one.png',
                title: 'Savings Management',
                subtitle: 'Track your savings and build the \nhabits saving money',
              ),
              OnboardingPageItem(
                image: 'assets/images/image_two.png',
                title: 'Make Payment Easier',
                subtitle: 'Find new opportunities to make your life better',
              ),
              OnboardingPageItem(
                image: 'assets/images/image_three.png',
                title: 'Grow Up Your Money',
                subtitle: 'Make Investment choice to grow your money',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepOrange.shade500,
                dotColor: Colors.grey,
                dotHeight: 4,
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

