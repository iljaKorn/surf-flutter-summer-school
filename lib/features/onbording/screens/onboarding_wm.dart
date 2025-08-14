import 'package:flutter/material.dart';
import 'package:surf_places/features/onbording/screens/onboarding_model.dart';
import 'package:surf_places/features/tabs_screen/tabs_screen.dart';

class OnboardingWm {
  final OnboardingModel _model;

  OnboardingWm(this._model);

  bool get isCompleted => _model.isCompleted;

  void onPressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabsScreen()));
  }
}
