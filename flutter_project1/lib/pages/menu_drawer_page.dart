import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controler/main_menu_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainMenuController>();


    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              controller.changePage(0);
              Get.back();
            },
          ),
          ListTile(
            leading: const Icon(Icons.history_outlined),
            title: const Text("History"),
            onTap: () {
              controller.changePage(1);
              Get.back();
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text("Profile"),
            onTap: () {
              controller.changePage(2);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}