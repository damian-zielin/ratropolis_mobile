import 'package:flutter/material.dart';

class RpUserScreenBody extends StatelessWidget {
  const RpUserScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[200],
      child: const Center(child: Text('User Screen', style: TextStyle(fontSize: 24, color: Colors.white))),
    );
  }
}
