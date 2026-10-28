import 'package:flutter/material.dart';
import 'package:flutter_project1/controler/main_menu_controller.dart';
import 'package:flutter_project1/pages/menu_drawer_page.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final index = controller.selectedIndex.value;

      return Scaffold(
        appBar: AppBar(
          title: const Text("Coba Flutter"),
        ),
        drawer: const MenuDrawerPage(),
        body: IndexedStack(
          index: index,
          children: controller.pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: controller.changePage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      );
    });
  }
}