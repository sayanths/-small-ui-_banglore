import 'package:flutter/material.dart';

class CustomSubjectContainer extends StatelessWidget {
  final String image;
  final String mainTtitle;
  final String subTitle;
  final IconData icon;
  final String lastTile;
  const CustomSubjectContainer({
    Key? key,
    required this.image,
    required this.mainTtitle,
    required this.subTitle,
    required this.icon,
    required this.lastTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(icon), Text(lastTile)],
            ),
          ],
        ),
      ),
    );
  }
}
