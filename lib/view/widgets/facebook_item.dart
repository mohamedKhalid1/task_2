import 'package:flutter/material.dart';

class FacebookItem extends StatelessWidget {
  const FacebookItem({
    super.key, required this.imagePath, required this.imageTitle,
  });
  final String imagePath;
  final String imageTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            imagePath,
            height: 50),
        Text(imageTitle),
      ],
    );
  }
}
