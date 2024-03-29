import 'package:flutter/material.dart';

class CustomOutlinedTextFormField extends StatelessWidget {
  final bool isPassword;
  final TextStyle style;
  final String hintText;
  final String text;
  final String validateEmptyText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int maxLines;
  final int maxLength;
  final String labelText;
  final String suffixText;
  final ThemeData themeData;
  final bool required;
  final Color hintColor;
  final Color labelColor;

  CustomOutlinedTextFormField({
    this.isPassword = false,
    this.style,
    this.hintText,
    this.text,
    this.validateEmptyText,
    this.controller,
    this.keyboardType,
    this.maxLines,
    this.maxLength,
    this.labelText,
    this.suffixText,
    this.themeData,
    this.required = true,
    this.hintColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: TextStyle(fontSize: 16),
      controller: controller,
      keyboardType: keyboardType,
      validator: !required
          ? null
          : (String value) {
              if (value.isEmpty) {
                return validateEmptyText;
              } else {
                return null;
              }
            },
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 16, color: hintColor),
          contentPadding: EdgeInsets.all(16),
          alignLabelWithHint: true,
          suffixText: suffixText,
          errorStyle: TextStyle(
            fontFamily: "Cairo",
            color: Colors.red,
            fontSize: 16,
          ),
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 16, color: labelColor),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
