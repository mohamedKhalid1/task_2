import 'package:flutter/material.dart';

class FollowersItem extends StatelessWidget {
  const FollowersItem({
    super.key,
    required this.numberOfFollowers,
    required this.nameFollowers,
  });
  final String numberOfFollowers;
  final String nameFollowers;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          numberOfFollowers,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          nameFollowers,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
