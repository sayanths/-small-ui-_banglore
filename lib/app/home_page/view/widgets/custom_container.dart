// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomSubjectContainer extends StatelessWidget {
  final String image;
  final String mainTtitle;
  final String subTitle;
  double? height;
  final String lastTile;
   CustomSubjectContainer({
    Key? key,
    required this.image,
    required this.mainTtitle,
    required this.subTitle,
    required this.lastTile,
    this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height/4.3,
        width: size.width/2.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              height: height,
            ),
            Text(
              mainTtitle,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.yellow,
                  ),
                ),
                Text(lastTile)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
