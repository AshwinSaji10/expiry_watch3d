import 'package:flutter/material.dart';
import 'package:expiry_watch/components/custom_list_tile.dart';
import 'package:go_router/go_router.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<void> _loadItems() async {
    // call API / DB, then setState(...)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inventory')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return CustomListTile(onTap: () => context.go('/details'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
