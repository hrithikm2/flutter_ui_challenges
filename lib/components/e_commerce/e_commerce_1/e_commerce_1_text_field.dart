import 'package:flutter/material.dart';

class EcommerceTextField extends StatelessWidget {
  const EcommerceTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hint,
  });
  final TextEditingController controller;
  final Widget prefixIcon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: true,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7bcbfd)),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7bcbfd)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7bcbfd)),
        ),
        prefixIcon: prefixIcon,
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xff7bcbfd)),
      ),
    );
  }
}
