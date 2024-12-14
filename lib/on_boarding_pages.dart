import 'package:flutter/material.dart';
import 'package:meal_app/on_boarding.dart';
import 'package:meal_app/sign_in_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: const [
              OnboardingPage(
                image: 'assets/img1_1.gif',
                title: 'Delicious Food',
                description: 'Let\'s eat some diet food while steak to cook.',
              ),
              OnboardingPage(
                image: 'assets/img2_1.gif',
                title: 'Healthy & Tasty',
                description: 'Eat today live another memorable day.',
              ),
              OnboardingPage(
                image: 'assets/img3_1.gif',
                title: 'Let\'s Eat...',
                description:
                    'Food is really and truly the most effective medicine.',
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Color(0xffFFAE59)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        pageController.jumpToPage(2); // Skip to last page
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isLastPage) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninView(),
                            ),
                          );
                        } else {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFAE59),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        isLastPage ? "Get Started" : "Next",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
