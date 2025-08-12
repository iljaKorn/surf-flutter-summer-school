import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_places/uikit/themes/text/app_text_theme.dart';

class OnboardingPage extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const OnboardingPage({required this.icon, required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    final size = 104.0;
    final textTheme = AppTextTheme.of(context);

    return Column(
      children: [
        SvgPicture.asset(
          icon,
          height: size,
          width: size,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: textTheme.title,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: textTheme.small,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
