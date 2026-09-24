import 'package:flutter/material.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield_teks.dart';
import '../components/custom_textbutton.dart';

class LoginClonePage extends StatelessWidget {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  static const Color shopeeOrange = Color(0xFFEE4D2D);

  LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtcontroller: txtUsername,
                hintText: 'No. Handphone/Email/Username',
                
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtcontroller: txtPassword,
                hintText: 'Password',
                obscureText: true,
               
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: CustomButton(
              text: 'Log In',
              onPressed: () {
              },
            ),
              // child: CustomButton(text: 'Log In'),
            ),
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
    );
  }
}