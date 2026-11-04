import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confrim_registration_page.dart';
import 'pages/listmakanan_page.dart';
import 'pages/detail_list_makanan.dart';
import 'pages/main_menu_page.dart';
import 'pages/login_clone_page.dart';
class Routers {

  static const String registrationPage = '/registration';
  static const String confirmRegistrationPage = '/confirm_registration';
  static const String listMakananPage = '/list_makanan';
  static const String detailListMakananPage = '/detail_list_makanan';
  static const String mainMenuPage = '/main_menu';
  static const String login = '/login_clone_page';

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

    GetPage(name: login, page: () => LoginClonePage(),
    ),

  ];

}