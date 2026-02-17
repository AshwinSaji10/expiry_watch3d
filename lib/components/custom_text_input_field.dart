import 'package:flutter/material.dart';

class CustomTextInputField extends StatefulWidget {
  final String? labelText;
  const CustomTextInputField({super.key, this.labelText});

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
