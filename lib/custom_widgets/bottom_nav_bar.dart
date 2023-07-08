

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.height,
    required this.width,
    required this.mode,
  });

  final double height;
  final double width;
  final bool mode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: width,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 0.5, color: Colors.grey))),
      child:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                  color: mode ? AppColors.black : AppColors.white,
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  CupertinoIcons.person_fill,
                  size: 30,
                  color: mode ? AppColors.black : AppColors.white,
                ),
                const Text(
                  "Profile",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  CupertinoIcons.search,
                  size: 30,
                  color: mode ? AppColors.black : AppColors.white,
                ),
                const Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}







