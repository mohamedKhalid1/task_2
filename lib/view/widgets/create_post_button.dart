import 'package:flutter/material.dart';

class CreatePostButton extends StatelessWidget {
  const CreatePostButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 230, 242, 254),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Create Post",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
