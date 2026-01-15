import 'package:flutter/material.dart';

class RpShopScreenBody extends StatelessWidget {
  const RpShopScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[200],
      child: const Center(child: Text('Shop Screen', style: TextStyle(fontSize: 24, color: Colors.white))),
    );
  }
}
