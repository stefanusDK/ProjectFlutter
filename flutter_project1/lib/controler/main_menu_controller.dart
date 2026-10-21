import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../pages/home_pages.dart';
import '../pages/history_page.dart';
import '../pages/pofile_page.dart';
import '../models/makanan_model.dart'; // sesuaikan path modelmu

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) => selectedIndex.value = index;

  late final List<Widget> pages = [
    const HomePages(),
    HistoryPage(),
    ProfilePage(),
  ];

  final RxList<MakananModel> listMakanan = <MakananModel>[
    MakananModel(
      gambarMakanan: "https://awsimages.detik.net.id/community/media/visual/2019/11/29/c1da4697-6737-4e6f-9560-31363968faea.jpeg?w=600&q=90",
      namaMakanan: "Soto Ayam",
      hargaMakanan: "Rp 15.000",
      deskripsiMakanan: "Soto ayam dengan kuah sedap",
      reviewMakanan: "Enak, kuahnya segar",
      ratingMakanan: 4.0,
    ),
    MakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTodzpoo2Z_VxT3zKOwYjzRgABc4wmlb1y6z9L7ogBYew&s=10",
      namaMakanan: "Mie Goreng",
      hargaMakanan: "Rp 12.000",
      deskripsiMakanan: "Mie goreng dengan bumbu spesial",
      reviewMakanan: "Ok, bumbunya pas",
      ratingMakanan: 4.1,
    ),
    MakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaewAFj9KWHPrFFMAM53z7VRoVSQpequc6hSXnQn3UNA&s=10",
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "Rp 10.000",
      deskripsiMakanan: "Nasi goreng dengan telur dan sayuran",
      reviewMakanan: "Enak",
      ratingMakanan: 4.0,
    ),
    MakananModel(
      gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbeizPFOEFb3VjE2GhnRWJt9ZqQe0mulpIly2UCbWWEA&s=10",
      namaMakanan: "Bakso",
      hargaMakanan: "Rp 20.000",
      deskripsiMakanan: "Bakso sapi dengan kuah sedap",
      reviewMakanan: "Enak",
      ratingMakanan: 4.0,
    ),
  ].obs;
} 