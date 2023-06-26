import 'package:flutter/material.dart';

class ShortcutItem extends StatelessWidget {
  const ShortcutItem({
    super.key, required this.imagePath, required this.imageTitle,
  });
  final String imagePath;
  final String imageTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(
              imagePath),
        ),
        Text(imageTitle)
      ],
    );
  }
}
