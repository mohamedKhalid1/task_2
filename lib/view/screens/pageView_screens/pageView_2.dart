import 'package:flutter/material.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_3.dart';

import '../../widgets/pageView/pageView_body.dart';

class PageView2 extends StatelessWidget {
  const PageView2({Key? key}) : super(key: key);
  static const String route = "pageView2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBody(
        image: "assets/images/pageview/pageview2.png",
        text1: "Premium Food\nAt Your Doorstep",
        text2:
            "Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy",
        color2: Colors.green,
        function: () {
          Navigator.of(context).pushNamed(PageView3.route);
        },
      ),
    );
  }
}
