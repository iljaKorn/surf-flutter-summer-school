import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_places/features/onbording/di/onboarding_dependencies.dart';
import 'package:surf_places/features/onbording/screens/onboarding_model.dart';
import 'package:surf_places/features/onbording/screens/onboarding_screen.dart';
import 'package:surf_places/features/onbording/screens/onboarding_wm.dart';

class OnboardingScreenBuilder extends StatelessWidget {
  const OnboardingScreenBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...OnboardingDependencies.providers(),
        Provider<OnboardingWm>(create: (context) => OnboardingWm(context.read<OnboardingModel>())),
      ],
      child: Builder(builder: (context) => OnboardingScreen(wm: context.read<OnboardingWm>())),
    );
  }
}
