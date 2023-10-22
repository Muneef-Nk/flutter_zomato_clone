import 'package:flutter/material.dart';

class BottomNavModel{
  final IconData icon;
  final String label;

  BottomNavModel({required this.icon, required this.label});
}

List<BottomNavModel> bottomNav=[
  BottomNavModel(icon: Icons.delivery_dining, label: "Delivery"),
  BottomNavModel(icon: Icons.receipt_long, label: "History"),
  BottomNavModel(icon: Icons.paid, label: "Money")
];