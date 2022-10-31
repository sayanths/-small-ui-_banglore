import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 233, 233),
      body: SafeArea(
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
                      CircleAvatar(),
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
                  Container(
                   
                    child: Column(
                      children: [
                        Row(
                          
                          children: [
                            Column(
                              children: [
                                Text("sds"),
                              ],
                            ),
                            SizedBox(width: 100,),
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                Container(
                  height: 150,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.add),
                      const Text("Mthematics"),
                      const Text("sds"),
                      Row(
                        children: const [Icon(Icons.add), Text("sdsd")],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.add),
                      const Text("Mthematics"),
                      const Text("sds"),
                      Row(
                        children: const [Icon(Icons.add), Text("sdsd")],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
