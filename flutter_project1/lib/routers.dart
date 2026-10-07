import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confrim_registration_page.dart';
import 'pages/listmakanan_page.dart';
import 'pages/detail_list_makanan.dart';
class Routers {

  static const String registrationPage = '/registration';
  static const String confirmRegistrationPage = '/confirm_registration';
  static const String listMakananPage = '/list_makanan';
  static const String detailListMakananPage = '/detail_list_makanan';

  static final pages=[
    GetPage( name: registrationPage, page: () => RegistrationPage(),
    ),
    GetPage(name: confirmRegistrationPage, page: () => ConfirmRegistrationPage(),
    ),
    GetPage(name: listMakananPage, page: () => ListmakananPage(),
    ),

    GetPage(name: detailListMakananPage, page: () => const DetailListMakanan(),
    ),

  ];

}