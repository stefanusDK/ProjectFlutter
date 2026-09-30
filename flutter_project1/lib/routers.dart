import 'package:get/get.dart';
import 'pages/registration_page.dart';
import 'pages/confrim_registration_page.dart';
class Routers {

  static const String registrationPage = '/registration';
  static const String confirmRegistrationPage = '/confirm_registration';

  static final pages=[
    GetPage( name: registrationPage, page: () => RegistrationPage(),
    ),
    GetPage(name: confirmRegistrationPage, page: () => ConfirmRegistrationPage(),
    ),

  ];

}