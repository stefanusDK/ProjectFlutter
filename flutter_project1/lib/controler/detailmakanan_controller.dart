import 'package:get/get.dart';
import '../models/makanan_model.dart';

class DetailmakananController extends GetxController {
  late final MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}