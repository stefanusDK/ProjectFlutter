import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield_teks.dart';
import '../components/custom_textbutton.dart';
import '../controler/login_clone_controller.dart';
import '../routers.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final controller = Get.put(LoginCloneController());

  static const Color shopeeOrange = Color(0xFFEE4D2D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: CustomTextfieldTeks(
                  text: 'Shopee',
                  color: shopeeOrange,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  controller: controller.txtUsername,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  controller: controller.txtPassword,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
              Obx(() => controller.isLoading.value 
                  ? const Center(child: CircularProgressIndicator()) 
                  : Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity,
                      child: CustomButton(
                        text: 'Log In',
                        onPressed: () {
                          controller.login();
                          Get.toNamed(Routers.mainMenuPage);
                        },
                      ),
                    )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(
                    text: 'Daftar',
                    onPressed: () {},
                    color: Colors.blue[700]!,
                    fontSize: 14,
                  ),
                  CustomTextButton(
                    text: 'Log in dengan no. handphone',
                    onPressed: () {},
                    color: Colors.blue[700]!,
                    fontSize: 14,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}