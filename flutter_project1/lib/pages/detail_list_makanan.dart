
import 'package:flutter/material.dart';
import 'package:flutter_project1/components/custom_textfield_teks.dart';
import 'package:get/get.dart';
import '../controler/detailmakanan_controller.dart';

class DetailListMakanan extends StatelessWidget {
  const DetailListMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailmakananController());
    final makanan = controller.makanan;

    return Scaffold(
      appBar: AppBar(
        title: CustomTextfieldTeks(
          text: makanan.namaMakanan,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            Image.network(
              makanan.gambarMakanan,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama + harga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomTextfieldTeks(
                          text: makanan.namaMakanan,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextfieldTeks(
                        text: makanan.hargaMakanan,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Rating
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 5),
                      CustomTextfieldTeks(
                        text: "${makanan.ratingMakanan}",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Deskripsi
                  const CustomTextfieldTeks(
                    text: "Deskripsi",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 8),
                  CustomTextfieldTeks(
                    text: makanan.deskripsiMakanan,
                    fontSize: 15,
                  ),
                  const SizedBox(height: 20),

                  // Review
                  const CustomTextfieldTeks(
                    text: "Review",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(Icons.rate_review_outlined),
                          const SizedBox(width: 12),
                          Expanded(
                            child: CustomTextfieldTeks(
                              text: makanan.reviewMakanan,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}