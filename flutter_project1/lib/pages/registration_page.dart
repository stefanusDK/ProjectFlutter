import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project1/components/custom_button.dart';
import 'package:flutter_project1/components/custom_textfield.dart';
import 'package:flutter_project1/routers.dart';
import 'package:get/get.dart';
import 'package:flutter_project1/components/custom_dropdown.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController txtNama = TextEditingController();
    final TextEditingController txtAlamat = TextEditingController();
    final TextEditingController txtEmail = TextEditingController();
    final TextEditingController txtJenisKelamin = TextEditingController();
    final TextEditingController txtNoWa = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page")),
      body: Column(
        children: [
          CustomTextField(txtcontroller: txtNama, hintText: "input nama"),
          
          CustomTextField(txtcontroller: txtAlamat, hintText: "input alamat"),
          CustomTextField(txtcontroller: txtEmail, hintText: "input email"),
          CustomTextField(
            txtcontroller: txtNoWa,
            hintText: "input no. WA",
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          CustomDropdown(controller: txtJenisKelamin, hintText: "Pilih Jenis Kelamin"),

          CustomButton(
            text: "Submit",
            onPressed: () {
              Get.toNamed(
                Routers.confirmRegistrationPage,
                arguments: {
                  'nama': txtNama.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'email': txtEmail.text.toString(),
                  'jenisKelamin': txtJenisKelamin.text.toString(),
                  'noWa': txtNoWa.text.toString(),
                },
              );
            },
          ),
        ],
      ),
    );
  }
}