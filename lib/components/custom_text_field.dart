import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final IconData suffixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.controller,
    this.obscureText = false,
    this.validator,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xff050522), width: 2.0),
        ),
        labelText: labelText,
        floatingLabelStyle: const TextStyle(
          color: Color(0xff050522),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Color(0xff050522), width: 2.0),
        ),
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: const Color(0xff050522),
      ),
      validator: validator,
    );
  }
}
