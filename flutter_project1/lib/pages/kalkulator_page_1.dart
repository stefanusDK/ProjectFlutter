import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project1/components/custom_button.dart';
import 'package:flutter_project1/components/custom_textfield.dart';
import 'package:flutter_project1/controler/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPage1 extends StatelessWidget {
  KalkulatorPage1({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("kalkulator")),
      body: Column(
        children: [
          CustomTextField(
            txtcontroller: txtAngka1,
            hintText: "input angka 1",
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          CustomTextField(
            txtcontroller: txtAngka2,
            hintText: "input angka 2",
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: "+",
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
              ),
              CustomButton(
                text: "-",
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
              ),
              CustomButton(
                text: "X",
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
              ),
              CustomButton(
                text: "/",
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
              ),
              CustomButton(
                text: "Reset",
                onPressed: () {
                  txtAngka1.clear();
                  txtAngka2.clear();
                  controller.reset();
                },
              ),
            ],
          ),
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}