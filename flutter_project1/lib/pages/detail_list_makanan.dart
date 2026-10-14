import 'package:flutter/material.dart';
import 'package:flutter_project1/components/custom_textfield_teks.dart';
import 'package:get/get.dart';
import '../controler/detailmakanan_controller.dart';

class DetailListMakanan extends StatelessWidget {
  const DetailListMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailmakananController());

    return Scaffold(
      appBar: AppBar(
        title: CustomTextfieldTeks(
          text: controller.namaMakanan,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Image.network(
            controller.gambarMakanan,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Column(
                children: [
                  CustomTextfieldTeks(
                    text: controller.namaMakanan,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 5),
                  CustomTextfieldTeks(
                    text: controller.hargaMakanan,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 5),
                      CustomTextfieldTeks(
                        text: "${controller.ratingMakanan}",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Column(
                children: [
                  const SizedBox(height: 10),
                  CustomTextfieldTeks(
                    text: controller.deskripsiMakanan,
                    fontSize: 15,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.rate_review_outlined),
              title: const CustomTextfieldTeks(
                text: "Review",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              subtitle: CustomTextfieldTeks(
                text: controller.reviewMakanan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}