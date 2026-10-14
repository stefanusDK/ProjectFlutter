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
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: InkWell(
                 onTap: () {
                  Get.to(
                    () => const DetailListMakanan(),
                    arguments: {
                      'namaMakanan': makanan.namaMakanan,
                      'hargaMakanan': makanan.hargaMakanan,
                      'gambarMakanan': makanan.gambarMakanan,
                      'deskripsiMakanan': makanan.deskripsiMakanan,
                      'ratingMakanan': makanan.ratingMakanan,
                      'reviewMakanan': makanan.reviewMakanan,
                    },
                  );
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
                      
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}