import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';
import 'package:rp_cards_screen/rp_cards_screen.dart';
import 'package:rp_city_screen/rp_city_screen.dart';
import 'package:rp_game_screen/rp_game_screen.dart';
import 'package:rp_heroes_screen/rp_heroes_screen.dart';
import 'package:rp_shop_screen/rp_shop_screen.dart';
import 'package:rp_user_screen/rp_user_screen.dart';

class GameRoot extends StatelessWidget {
  const GameRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => GameNavigation(), child: const _GameView());
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    final nav = context.watch<GameNavigation>();

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && nav.canPop) {
          nav.pop();
        }
      },
      child: Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: _buildScene(nav.current),
        ),
      ),
    );
  }

  Widget _buildScene(GameRoute route) {
    return switch (route) {
      GameRouteGame() => const RpGameScreen(),
      GameRouteCards() => const RpCrdsScreen(),
      GameRouteCity() => const RpCityScreen(),
      GameRouteShop() => const RpShopScreen(),
      GameRouteHeroes() => const RpHeroesScreen(),
      GameRouteUser() => const RpUserScreen(),
    };
  }
}
