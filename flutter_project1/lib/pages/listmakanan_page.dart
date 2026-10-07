import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controler/listmakanan_controller.dart';
import 'detail_list_makanan.dart';


class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});
  final ListmakananController controller = Get.put(ListmakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
               Get.to(() =>  DetailListMakanan(), arguments: makanan);
              },
              child: Card(
                elevation: 2,
                child: ListTile(
                  leading: Image.network(
                    makanan.gambarMakanan,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(makanan.namaMakanan),
                  subtitle: Text("Harga: ${makanan.hargaMakanan}"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}