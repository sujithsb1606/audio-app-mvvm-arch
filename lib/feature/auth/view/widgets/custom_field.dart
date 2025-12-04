import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/core/extention/extentions.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
      obscureText: isObscureText,
      validator: (val) {
        if(val.isNullOrEmpty){
          return '$hintText is missing';
        }
        return null;
      },
    );
  }
}
