import 'package:flutter/material.dart';
import 'package:surf_places/assets/images/app_svg_icons.dart';
import 'package:surf_places/assets/strings/app_strings.dart';
import 'package:surf_places/features/onbording/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

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
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("data")),
            SizedBox(
              height: 200,
            ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
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
          ],
        ),
      ),
    );
  }
}
