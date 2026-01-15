import 'package:flutter/material.dart';

class RpHeroesScreenBody extends StatelessWidget {
  const RpHeroesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[200],
      child: const Center(child: Text('Heroes Screen', style: TextStyle(fontSize: 24, color: Colors.white))),
    );
  }
}
