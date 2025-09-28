class OnboardingModel {
  bool _isCompleted;

  OnboardingModel({required bool isCompleted}) : _isCompleted = isCompleted;

  bool get isCompleted => _isCompleted;

  set isCompleted(bool val) => _isCompleted = val;
}
