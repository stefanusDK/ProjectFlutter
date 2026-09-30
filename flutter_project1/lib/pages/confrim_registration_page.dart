import 'package:flutter/material.dart';
import 'package:flutter_project1/components/custom_button.dart';
import 'package:get/get.dart';
import '../controler/confirm_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final ConfirmRegistrationController controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 20);

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Nama: ${controller.nama}", style: style),
            const SizedBox(height: 8),
            Text("Alamat: ${controller.alamat}", style: style),
            const SizedBox(height: 8),
            Text("Email: ${controller.email}", style: style),
            const SizedBox(height: 8),
            Text("Jenis Kelamin: ${controller.jenisKelamin}", style: style),
            const SizedBox(height: 8),
            Text("No. WA: ${controller.noWa}", style: style),
            CustomButton(
              text: "ok",
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}