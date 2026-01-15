import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';

class RpUserScreenHeader extends StatelessWidget {
  const RpUserScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.read<GameNavigation>().pop(),
        ),
      ],
    );
  }
}
