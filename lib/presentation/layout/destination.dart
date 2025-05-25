import 'package:flutter/material.dart';

class Destination {
  Destination({required this.label, required this.icon});
  final String label;
  final IconData icon;
}

final destinations = <Destination>[
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Search', icon: Icons.search),
  Destination(label: 'Favorites', icon: Icons.favorite),
  Destination(label: 'Profile', icon: Icons.person),
];
