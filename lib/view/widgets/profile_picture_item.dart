import 'package:flutter/material.dart';

class ProfilePictureItem extends StatelessWidget {
  const ProfilePictureItem({
    super.key,
    required this.iconData,
  });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.white,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
              radius: 51,
              backgroundColor: Color(0xdf949498),
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/images/cyber_royal_logo.png'),
              )),
          Container(
            color: Colors.white,
            child: Icon(
              iconData,
              color: Colors.blue,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
//   width: 100.0,
//   height: 100.0,
//   decoration: BoxDecoration(
//     color: const Color(0xff7c94b6),
//     image: const DecorationImage(
//       image: AssetImage('assets/images/cyber_royal_logo.png'),
//       fit: BoxFit.cover,
//     ),
//     borderRadius: const BorderRadius.all(Radius.circular(50.0)),
//     border: Border.all(
//       color: Colors.black26,
//       width: 0.9,
//     ),
//   ),
// ),
