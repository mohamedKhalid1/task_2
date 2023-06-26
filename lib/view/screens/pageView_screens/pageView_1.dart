import 'package:flutter/material.dart';
import 'package:task_2/view/screens/pageView_screens/pageView_2.dart';

class PageView1 extends StatelessWidget {
  const PageView1({Key? key}) : super(key: key);
  static const String route = "pageView1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "Welcome to",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/cyber_royal_logo.png",
              width: 193,
              height: 150,
            ),
            Image.asset(
              "assets/images/pageview/welcome_screen.png",
              width: 385,
              height: 300,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFFDCDCDC),
                  ),
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFFDCDCDC),
                  ),
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFFDCDCDC),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PageView2.route);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFC107)),
                  child: const Text("Get started"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
