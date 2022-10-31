import 'package:another_ui_banglore/app/home_page/view/widgets/custom_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 232, 232),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
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
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 380,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 75, 97, 222),
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
                                    width: 120,
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
                                height: 180,
                                width: 200,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Subject",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: [
                  CustomSubjectContainer(
                      image: 'assets/pie_chart.png',
                      mainTtitle: 'Mathematics',
                      subTitle: '\$10/month',
                      lastTile: 'To study maths'),
                  CustomSubjectContainer(
                      image: 'assets/beaker.png',
                      mainTtitle: 'Chemistry',
                      subTitle: '\$14/month',
                      lastTile: 'To study chemistry'),
                  CustomSubjectContainer(
                    height: 60,
                      image: 'assets/sat2.png',
                      mainTtitle: 'Biology',
                      subTitle: '\$16/month',
                      lastTile: 'To study Biology '),
                  CustomSubjectContainer(
                      image: 'assets/language.png',
                      mainTtitle: 'Language',
                      subTitle: '\$26/month',
                      lastTile: 'To study Language'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
