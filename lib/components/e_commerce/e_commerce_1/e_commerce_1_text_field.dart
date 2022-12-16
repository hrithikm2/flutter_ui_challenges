import 'package:flutter/material.dart';

class EcommerceTextField extends StatelessWidget {
  const EcommerceTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: true,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7bcbfd)),
        ),
      ),
    );
  }
}
