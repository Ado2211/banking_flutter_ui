import 'package:banking_flutter_ui/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final controller = Get.find<HomeController>();
      return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black, 
        unselectedItemColor: Colors.grey, 
        currentIndex: controller.selectedIndex.value,
        onTap: (index) {
          controller.updateSelectedIndex(index);
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Summary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz    ),
            label: 'Transfers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      );
    });
  }
}
