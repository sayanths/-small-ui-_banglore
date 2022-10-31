import 'package:another_ui_banglore/app/bottom_nav/view_model/view_model.dart';
import 'package:another_ui_banglore/app/home_page/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bottomGet = Get.put(BottomNavController());
  final Color navigationBarColor = Colors.white;
  // int selectedIndex = 0;
  
  @override
  void initState() {
    super.initState();
    bottomGet.pageController = PageController(initialPage: bottomGet.newValue);
  }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
          backgroundColor: Colors.grey,
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
                backgroundColor: navigationBarColor,
                onItemSelected: (int index) {
                  controller.onChange(index);
                  // setState(() {
                  //   selectedIndex = index;
                  // });

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
