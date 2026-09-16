import 'package:flutter/material.dart';
import 'components/custom_textfield.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          // kita isi textfield username, password, dan button
          Text(
            "Welcome to Application " + statusLogin.toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 4, 223),
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(txtcontroller: txtUsername, hintText: "Input username"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(txtcontroller: txtPassword, hintText: "Input password", obscureText: true),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String username = txtUsername.text.toString();
                  String password = txtPassword.text.toString();
                  
                  setState(() {
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "admin";
                    } else {
                      print("gagal login");
                      statusLogin = "failed";
                    }
                  });
                },
                child: const Text("Login"),
              ),
              const SizedBox(width: 10), // Tambahan spasi tipis biar tombol nggak dempetan
              ElevatedButton(
                onPressed: () {}, 
                child: const Text("Register"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}