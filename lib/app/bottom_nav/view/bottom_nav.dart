import 'package:another_ui_banglore/app/bottom_nav/view_model/view_model.dart';
import 'package:another_ui_banglore/app/home_page/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyHomePage extends StatelessWidget {
  final bottomGet = Get.put(BottomNavController());
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: bottomGet.navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: bottomGet.pageController,
            children: const <Widget>[
              HomePage(),
              Center(child: Text("Notes")),
              Center(child: Text("Cart")),
              Center(child: Text("Profile")),
            ],
          ),
          bottomNavigationBar: GetBuilder<BottomNavController>(
            builder: (controller) {
              return WaterDropNavBar(
                waterDropColor: const Color.fromARGB(255, 231, 79, 68),
                backgroundColor: bottomGet.navigationBarColor,
                onItemSelected: (int index) {
                  controller.onChange(index);

                  bottomGet.pageController.animateToPage(bottomGet.newValue,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOutQuad);
                },
                selectedIndex: bottomGet.newValue,
                barItems: <BarItem>[
                  BarItem(
                    filledIcon: Icons.home,
                    outlinedIcon: Icons.home_filled,
                  ),
                  BarItem(
                      filledIcon: Icons.notes,
                      outlinedIcon: Icons.note_add_outlined),
                  BarItem(
                      filledIcon: Icons.shopping_cart,
                      outlinedIcon: Icons.shopping_cart),
                  BarItem(
                    filledIcon: Icons.person,
                    outlinedIcon: Icons.person,
                  ),
                ],
              );
            },
          )),
    );
  }
}
