import 'package:flutter/material.dart';

class RpCardsScreenBody extends StatelessWidget {
  const RpCardsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[200],
      child: const Center(child: Text('Cards Screen', style: TextStyle(fontSize: 24, color: Colors.white))),
    );
  }
}
