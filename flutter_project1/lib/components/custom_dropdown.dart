import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: DropdownMenu<String>(
      width: MediaQuery.of(context).size.width * 0.8,
      controller: controller,
      hintText: hintText, 
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 'Pilih Jenis Kelamin', label: 'Pilih Jenis Kelamin'),
        DropdownMenuEntry(value: 'Laki-laki', label: 'Laki-laki'),
        DropdownMenuEntry(value: 'Perempuan', label: 'Perempuan'),
      ],
      
    ),
      
    );
  }
}