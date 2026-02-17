import 'package:flutter/material.dart';
import 'package:expiry_watch/components/custom_date_input_field.dart';
import 'package:expiry_watch/components/custom_text_input_field.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Items')),
      body: Column(
        children: [
          CustomTextInputField(labelText: 'Item Name'),
          const SizedBox(height: 10),
          CustomDateInputField(),
        ],
      ),
    );
  }
}
