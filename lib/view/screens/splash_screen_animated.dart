import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task_2/view/screens/home_screen.dart';

class SplashScreenAnimated extends StatelessWidget {
  const SplashScreenAnimated({super.key});

  static const String route="SplashScreenAnimated";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

        splashIconSize: 300,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.slideTransition,
        splash: Column(
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/images/cyber_royal_logo.png"),
            ),
      TypewriterAnimatedTextKit(
        repeatForever: true,
        text: const [
          "Cyber Royal",
        ], textStyle: TextStyle(color:Colors.black ),

      ),
          ],
        ),
        nextScreen: const HomeScreen(),

// we can use
        duration: 5000,
//5000= 5 Second

//control the duration of the image , we can use
        animationDuration: const Duration(seconds: 5));
//small number : the duration will be speed
//large number : the duratiion will be slow);
  }
}