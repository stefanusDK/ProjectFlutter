import 'package:flutter/material.dart';
import 'package:flutter_project1/controler/main_menu_controller.dart';
import 'package:get/get.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainMenuController>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Daftar Makanan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.listMakanan[index];
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.only(left: 10),
                      child: Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                makanan.gambarMakanan,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.fastfood);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  Text(makanan.namaMakanan),
                                  Text(makanan.hargaMakanan),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}