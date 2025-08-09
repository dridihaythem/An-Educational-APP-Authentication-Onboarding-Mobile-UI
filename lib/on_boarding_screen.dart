import 'package:design/constant.dart';
import 'package:design/register_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Widget _pageViewContent({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Image.asset(image, width: 296, height: 193, fit: BoxFit.contain),
        SizedBox(height: 70),
        Container(
          alignment: Alignment.center,
          height: 15,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CircleAvatar(
              radius: 7,
              backgroundColor: index == _currentPage
                  ? Constant.mainColor
                  : Color(0xFDFD9D9D9),
            ),
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: 3,
          ),
        ),
        SizedBox(height: 70),
        Text(
          title,
          style: TextStyle(
            color: Constant.mainColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          description,
          style: TextStyle(color: Constant.mainColor, fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  late PageController pageController;
  int _currentPage = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              if (_currentPage != 2)
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Constant.mainColor, fontSize: 16),
                    ),
                  ),
                ),
              SizedBox(height: 100),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    _pageViewContent(
                      image: 'assets/images/Onboarding1.png',
                      title: 'Welcome to DWD',
                      description:
                          'Welcome as you learn a world changing skill to get a better job.',
                    ),
                    _pageViewContent(
                      image: 'assets/images/Onboarding2.png',
                      title: 'Choose Your Course',
                      description:
                          'Choose the course of your choice and gain industry knowledge and experience in it.',
                    ),
                    _pageViewContent(
                      image: 'assets/images/Onboarding3.png',
                      title: 'Get Certified',
                      description:
                          'Start learning and get certified after your training to get a lucrative job.',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: _currentPage == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentPage != 0)
                    GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Constant.mainColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(150, 44)),
                    onPressed: () {
                      if (_currentPage == 2) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                          (route) => false,
                        );
                      } else {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      _currentPage == 2 ? "Get Started" : "Next",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
