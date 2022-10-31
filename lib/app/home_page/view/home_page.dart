import 'package:another_ui_banglore/app/home_page/view/widgets/allcustomwidgets.dart';
import 'package:another_ui_banglore/app/home_page/view/widgets/custom_container.dart';
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
              height20,
              const MainHeadingsCustom(),
              height20,
              const CustomMainContainer(),
              height20,
              const CustomSubjectAndSeelAll(),
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
