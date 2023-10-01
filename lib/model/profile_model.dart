import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilMode{
  final String label;
  final IconData icon;

  ProfilMode({required this.label, required this.icon});
}

List<ProfilMode> profileModel=[
  ProfilMode(label: "Your order", icon: Icons.shopping_bag),
  ProfilMode(label: "Favorite", icon: Icons.favorite_outline),
  ProfilMode(label: "Address book", icon: Icons.contact_mail),
  ProfilMode(label: "Hidden Restaurants", icon: Icons.visibility_off),
  ProfilMode(label: "Online ordering help", icon: Icons.question_mark),
];