import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String jenisKelamin;
  late String noWa;

  @override 
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['nama'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    jenisKelamin = arguments['jenisKelamin'];
    noWa = arguments['noWa'];
  }
}