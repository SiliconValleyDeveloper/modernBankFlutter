import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modernbank/utils/custom_theme.dart';

import '../controllers/rootapp_controller.dart';

class RootappView extends GetView<RootappController> {
   RootappView({Key? key}) : super(key: key);
   final rootAppController = Get.put(RootappController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => (Scaffold(
      body: SizedBox.expand(
          child: PageView(
              controller: rootAppController.pageController,
              onPageChanged: (index) {
                rootAppController.currentIndex.value = index;
              },
              children: rootAppController.pages)),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: context.theme.backgroundColor,
        selectedIndex: rootAppController.currentIndex.value,
        onItemSelected: (index) {
          rootAppController.currentIndex.value = index;
          rootAppController.pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: bluishClr,
              inactiveColor: Colors.black,
              title: Text('Home', style: titleNormalStyle),
              icon: Icon(
                Icons.home,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              )),
          BottomNavyBarItem(
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              title: Text('Search', style: paragraphStyle),
              icon: Icon(
                Icons.event_note_rounded,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              )),
          BottomNavyBarItem(
              activeColor: Colors.pink.shade300,
              inactiveColor: Colors.black,
              title: Text(
                'Article',
                style: paragraphStyle,
              ),
              icon: Icon(Icons.article,
                  color: Get.isDarkMode ? Colors.white : Colors.black)),
          BottomNavyBarItem(
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              title: Text(
                'Cart',
                style: paragraphStyle,
              ),
              icon: Icon(Icons.shopping_cart_checkout,
                  color: Get.isDarkMode ? Colors.white : Colors.black)),
          BottomNavyBarItem(
              activeColor: bluishClr,
              inactiveColor: Colors.black,
              title: Text('Setting', style: paragraphStyle),
              icon: Icon(Icons.account_circle,
                  color: Get.isDarkMode ? Colors.white : Colors.black)),
        ],
      ),
    )));
  }
}
