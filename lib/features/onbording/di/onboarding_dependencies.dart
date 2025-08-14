import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:surf_places/features/onbording/screens/onboarding_model.dart';

abstract class OnboardingDependencies {
  static List<SingleChildWidget> providers() {
    return [Provider<OnboardingModel>(create: (context) => OnboardingModel(isCompleted: false))];
  }
}
