import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:wishingline/view/on%20boarding/on_boarding.dart';

import '../../utality/image_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 40,
        splash: Image(
          image: AssetImage(AppImages.splashScreenImage),
          width: 150.w,
          height: 40.h,
        ),
        nextScreen: const OnBoardingScreen(),
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
