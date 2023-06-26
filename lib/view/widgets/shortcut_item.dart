import 'package:flutter/material.dart';

class ShortcutItem extends StatelessWidget {
  const ShortcutItem({
    super.key,
    required this.imagePath, required this.imageTitle1, required this.imageTitle2,
  });
  final String imagePath;
  final String imageTitle1;
  final String imageTitle2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imagePath),
        ),
        Text(imageTitle1),
        Text(imageTitle2),
      ],
    );
  }
}
