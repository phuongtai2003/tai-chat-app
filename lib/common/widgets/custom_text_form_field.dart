import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.field,
    this.headingIcon,
    this.footIcon,
    this.footIconTap,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String field;
  final IconData? headingIcon;
  final IconData? footIcon;
  final VoidCallback? footIconTap;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ? true : false,
      style: const TextStyle(
        color: Colors.blueAccent,
      ),
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.5,
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        prefixIcon: headingIcon != null
            ? Icon(
                headingIcon,
                size: 25,
                color: Colors.blueAccent,
              )
            : null,
        suffixIcon: footIcon != null
            ? GestureDetector(
                onTap: footIconTap,
                child: Icon(
                  footIcon,
                  size: 25,
                  color: Colors.blueAccent,
                ),
              )
            : null,
        labelText: field,
        hintText: field,
        hintStyle: const TextStyle(color: Colors.blueAccent),
        labelStyle: const TextStyle(color: Colors.blueAccent),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return field;
        }
        return null;
      },
    );
  }
}
