// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Widget height20 = SizedBox(
  height: 20,
);

class MainHeadingsCustom extends StatelessWidget {
  const MainHeadingsCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Helllo Rakib",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
                child: Icon(
                  CupertinoIcons.search,
                  size: 30,
                ),
              ),
            ],
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Find your course",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/4.5,
      width: size.width/1.1,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 2, 30, 190),
            Color.fromARGB(255, 83, 175, 251),
          ],
        ),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 166, 178, 246),
              offset: Offset(-0, 10),
              blurRadius: 10,
              spreadRadius: 2),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "60% off",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Feb 14-Mar 20",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: size.width/3.3,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: const StadiumBorder()),
                            child: const Text("Join Now"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: size.height/4.5,
                      width: size.width/2.3,
                      decoration: const BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(80),
                            topLeft: Radius.circular(80)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/bag.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSubjectAndSeelAll extends StatelessWidget {
  const CustomSubjectAndSeelAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Subject",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "see all",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
