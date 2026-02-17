import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:expiry_watch/pages/add_items/add_items.dart';
import 'package:expiry_watch/pages/inventory/inventory.dart';
import 'package:expiry_watch/pages/item_detail/item_detail.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Inventory(),
      routes: [
        GoRoute(path: 'add', builder: (context, state) => const AddItems()),
        GoRoute(
          path: 'details',
          builder: (context, state) => const ItemDetail(),
        ),
      ],
    ),
  ],
);
