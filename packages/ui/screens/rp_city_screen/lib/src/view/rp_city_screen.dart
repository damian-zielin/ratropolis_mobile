import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpCityScreen extends StatelessWidget {
  const RpCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(kToolbarHeight), child: RpGameHeader()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('City Screen', style: TextStyle(fontSize: 24))),
          IconButton(
            icon: const Icon(Icons.shop),
            onPressed: () => context.read<GameNavigation>().push(const GameRouteShop()),
          ),
          IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => context.read<GameNavigation>().pop()),
        ],
      ),
    );
  }
}
