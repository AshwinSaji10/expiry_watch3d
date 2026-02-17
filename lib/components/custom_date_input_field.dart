import 'package:flutter/material.dart';

class CustomDateInputField extends StatefulWidget {
  final String? labelText;
  const CustomDateInputField({super.key, this.labelText});

  @override
  State<CustomDateInputField> createState() => _CustomDateInputFieldState();
}

class _CustomDateInputFieldState extends State<CustomDateInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: widget.labelText ?? 'Expiry Date',
        border: OutlineInputBorder(),
      ),
    );
  }
}
