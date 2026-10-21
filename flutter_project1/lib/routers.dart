import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confrim_registration_page.dart';
import 'pages/listmakanan_page.dart';
import 'pages/detail_list_makanan.dart';
import 'pages/main_menu_page.dart';
class Routers {

  static const String registrationPage = '/registration';
  static const String confirmRegistrationPage = '/confirm_registration';
  static const String listMakananPage = '/list_makanan';
  static const String detailListMakananPage = '/detail_list_makanan';
  static const String mainMenuPage = '/main_menu';

  static final pages=[
    GetPage( name: registrationPage, page: () => RegistrationPage(),
    ),
    GetPage(name: confirmRegistrationPage, page: () => ConfirmRegistrationPage(),
    ),
    GetPage(name: listMakananPage, page: () => ListmakananPage(),
    ),

    GetPage(name: detailListMakananPage, page: () =>  DetailListMakanan(),
    ),

    GetPage(name: mainMenuPage, page: () => MainMenuPage(),
    ),

  ];

}