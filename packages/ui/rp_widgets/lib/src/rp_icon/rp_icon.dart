import 'package:flutter/material.dart';

class RpIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  const RpIcon({required this.icon, required this.color, required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: size);
  }
}
