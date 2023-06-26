import 'package:flutter/material.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_1.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_2.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_3.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_4.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route="HomeScreen";

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageView1(),
        PageView2(),
        PageView3(),
        PageView4(),
      ],
    );
  }
}
