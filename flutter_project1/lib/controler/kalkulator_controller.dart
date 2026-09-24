import 'package:get/get.dart';

class KalkulatorController extends GetxController{

  var hasil = 0.obs;


  void reset() {
    hasil.value = 0;
    Get.snackbar(
      "Reset",
      "Hasil telah direset",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void tambah(int angka1, int angka2) {
     int hasilTambah = angka1 + angka2;
     hasil.value = hasilTambah;
      Get.snackbar(
        "Hasil Penjumlahan",
        "Hasilnya adalah $hasilTambah",
        snackPosition: SnackPosition.BOTTOM,
        
      );
   }

  void kurang(int angka1, int angka2) {
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "Hasil Pengurangan",
      "Hasilnya adalah $hasilKurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(int angka1, int angka2) {
    int hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
    Get.snackbar(
      "Hasil Perkalian",
      "Hasilnya adalah $hasilKali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(int angka1, int angka2) {
    int hasilBagi = angka1 ~/ angka2;
    hasil.value = hasilBagi;
    Get.snackbar(
      "Hasil Pembagian",
      "Hasilnya adalah $hasilBagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  
    
  // void tambah(int angka1, int angka2) {
  //   hasil.value = angka1 + angka2;
  // }

  // void kurang(int angka1, int angka2) {
  //   hasil.value = angka1 - angka2;
  // }

  // void kali(int angka1, int angka2) {
  //   hasil.value = angka1 * angka2;
  // }

  // void bagi(int angka1, int angka2) {
  //   hasil.value = angka1 ~/ angka2;
  // }

}