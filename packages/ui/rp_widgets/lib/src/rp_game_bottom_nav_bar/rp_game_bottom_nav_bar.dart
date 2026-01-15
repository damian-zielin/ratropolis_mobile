import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpGameBottomNavBar extends StatelessWidget {
  const RpGameBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      {
        'label': 'Heroes',
        'icon': Icons.man,
        'action': () => context.read<GameNavigation>().push(const GameRouteHeroes()),
      },
      {
        'label': 'Cards',
        'icon': Icons.pageview,
        'action': () => context.read<GameNavigation>().push(const GameRouteCards()),
      },
      {
        'label': 'Shop',
        'icon': Icons.shopping_cart,
        'action': () => context.read<GameNavigation>().push(const GameRouteShop()),
      },
      // {
      //   'label': 'City',
      //   'icon': Icons.location_city,
      //   'action': () => context.read<GameNavigation>().push(const GameRouteCity()),
      // },
    ];

    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            buttons.map((button) {
              return Expanded(
                child: ElevatedButton(
                  onPressed: button['action'] as VoidCallback?,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.brown[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), side: BorderSide.none),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RpIcon(icon: button['icon']! as IconData, color: Colors.grey[700]!, size: 24),
                      Text(button['label']! as String, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
