import 'package:flutter/material.dart';
import 'package:task_2/view/screens/home_screen.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_1.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_2.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_3.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_4.dart';
import 'package:task_2/view/screens/profile_screen.dart';
import 'package:task_2/view/screens/splash_screen_animated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),

        useMaterial3: true,
      ),
      routes: {
        PageView1.route: (context) => const PageView1(),
        PageView2.route: (context) => const PageView2(),
        PageView3.route: (context) => const PageView3(),
        PageView4.route: (context) => const PageView4(),
        HomeScreen.route: (context) => const HomeScreen(),
        ProfileScreen.route: (context) => const ProfileScreen(),
        SplashScreenAnimated.route: (context) => const SplashScreenAnimated(),
      },
      initialRoute: SplashScreenAnimated.route,
    );
  }
}
