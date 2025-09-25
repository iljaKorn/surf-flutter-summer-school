import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/onbording/screens/onboarding_wm.dart';
import 'package:surf_places/features/onbording/widgets/onboarding_page.dart';
import 'package:surf_places/uikit/buttons/main_button.dart';
import 'package:surf_places/uikit/buttons/text_button_widget.dart';

class OnboardingScreen extends StatefulWidget {
  final OnboardingWm wm;

  const OnboardingScreen({required this.wm, super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  final List<Widget> _slides = [
    const OnboardingPage(
      icon: AppSvgIcons.onboardingPage1,
      title: AppStrings.onboardingPage1Title,
      description: AppStrings.onboardingPage1Description,
    ),
    const OnboardingPage(
      icon: AppSvgIcons.onboardingPage2,
      title: AppStrings.onboardingPage2Title,
      description: AppStrings.onboardingPage1Description,
    ),
    const OnboardingPage(
      icon: AppSvgIcons.onboardingPage3,
      title: AppStrings.onboardingPage3Title,
      description: AppStrings.onboardingPage1Description,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Visibility(
            visible: currentIndex != _slides.length - 1,
            child: TextButtonWidget(
              title: AppStrings.onboardingSkipButton,
              onPressed: () => widget.wm.onPressed(context),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: _slides.length,
                itemBuilder: (context, index) {
                  return _slides[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_slides.length, (index) {
                return Container(
                  height: 10,
                  width: currentIndex == index ? 25 : 10,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == index ? Colors.green : Colors.grey,
                  ),
                );
              }),
            ),
            SizedBox(
              height: currentIndex == _slides.length - 1 ? 117 : 117 + 48,
            ),
            Visibility(
              visible: currentIndex == _slides.length - 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 48,
                  width: 328,
                  child: MainButton(onPressed: () => widget.wm.onPressed(context), child: Text('Старт')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
