import 'package:flutter/material.dart';

class DropdownModel extends StatelessWidget {
  final String? controller;
  final String? hintText;
  final List<String>? items;

   const DropdownModel({this.controller, this.hintText, this.items,super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: controller,
      hint: Text(hintText ?? 'Select'),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
      ),
      items: items?.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}
