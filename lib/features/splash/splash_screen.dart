import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:surf_places/features/tabs_screen/tabs_screen.dart';
import 'package:surf_places/uikit/themes/colors/app_color_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _size = 160.0;

  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabsScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorTheme.of(context);

    return Scaffold(
      body: DecoratedBox(
        child: Center(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(colorTheme.background, BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/icons/splash_logo.svg',
              width: _size,
              height: _size,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorTheme.splashStart, colorTheme.splashEnd],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
