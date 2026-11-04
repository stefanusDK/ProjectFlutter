import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginCloneController extends GetxController {

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
 
 void login() async{
  
  if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
    Get.snackbar('Error', 'Username dan Password tidak boleh kosong');
    // isLoading.value = false;
    // return;
  }else{

    try {

      isLoading.value = true;
      final url = Uri.parse("https://mediadwi.com/api/latihan/login"); // Ganti dengan URL API yang sesuai

      final respon = await http.post(url,body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString(),
        },
      );

      isLoading.value = false;
      if(respon.statusCode == 200){

        final data = jsonDecode(respon.body);
        if(data['status'] == true){
          Get.snackbar("Success", data['message']);
        }else {
          Get.snackbar("Error", data['message']);
        }
      }else {
        Get.snackbar("Error", "cek internet anda");
      }
        

    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
 }
  
}