import 'package:flutter/material.dart';

import '../component/theme/theme.dart';

class TextfieldElipticalWidget extends StatelessWidget {
  const TextfieldElipticalWidget({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.obsecureText = false,
    this.validator,
  });

  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool obsecureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.dark2,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hint,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.dark1),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary500),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      validator: validator,
    );
  }
}
