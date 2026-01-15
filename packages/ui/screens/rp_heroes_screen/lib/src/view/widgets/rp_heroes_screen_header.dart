import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';

class RpHeroesScreenHeader extends StatelessWidget {
  const RpHeroesScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.read<GameNavigation>().pop(),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
          onPressed: () => context.read<GameNavigation>().push(const GameRouteShop()),
        ),
      ],
    );
  }
}
