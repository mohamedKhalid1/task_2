
import 'package:flutter/material.dart';

class ProfilePictureItem extends StatelessWidget {
  const ProfilePictureItem({
    super.key, required this.iconData,
  });
final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        top: MediaQuery.of(context).size.height * 0.12,
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/cyber_royal_logo.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.6,
                  ),
                ),
              ),
              Icon(
                iconData,
                color: Colors.blue,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
