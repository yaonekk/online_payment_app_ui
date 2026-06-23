import 'package:flutter/material.dart';
import 'package:online_payment/features/screens/onboarding/sign_in_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // final PageController _pageController = PageController();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  final List<String> _imageIntro = [
    'assets/images/intro_1.png',
    'assets/images/intro_2.png',
    'assets/images/intro_3.png',
  ];
  final List<String> _des = [
    'Fastest Payment in the world',
    'The most Secoure Platfrom for Customer',
    'Paying for Everything is Easy and Convenient',
  ];
  final List<String> _moreDes = [
    'Integrate multiple payment methoods to help you up the process quickly',
    'Built-in Fingerprint, face recognition and more, keeping you completely safe',
    'Built-in Fingerprint, face recognition and more, keeping you completely safe ',
  ];

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              SizedBox(
                height: screenHeight * 0.4,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _imageIntro.length,
                  itemBuilder: (context, index) {
                    return Image.asset(_imageIntro[index]);
                  },
                ),
              ),
              // SizedBox(height: screenHeight * 0.05),
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: _imageIntro.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Color(0XEEA2A2A7),
                  activeDotColor: Color(0XEE0066FF),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      _des[_currentIndex],
                      style: TextStyle(fontWeight: .bold, fontSize: 28),
                      textAlign: .center,
                    ),
                    SizedBox(height: 30),
                    Text(
                      _moreDes[_currentIndex],
                      style: TextStyle(fontSize: 16, color: Color(0XEE7E848D)),
                      textAlign: .center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              GestureDetector(
                onTap: () {
                  if (_currentIndex == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  } else {
                    setState(() {
                      _currentIndex++;
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  }
                },

                child: Container(
                  height: 65,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: .circular(16),
                    color: Color(0XEE0066FF),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: .bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
