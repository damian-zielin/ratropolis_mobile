import 'package:flutter/material.dart';
import 'package:game_core/game_core.dart';
import 'package:provider/provider.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpGameHeader extends StatelessWidget {
  const RpGameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.65),
          // boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 8, offset: Offset(0, 2))],
        ),
        child: Row(
          children: [
            // Avatar
            ElevatedButton(
              onPressed: () => context.read<GameNavigation>().push(const GameRouteUser()),
              // style: ElevatedButton.styleFrom(
              //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              // ),
              child: const RpIcon(icon: Icons.person, color: Color.fromARGB(255, 173, 173, 173), size: 40),
            ),

            const Spacer(),

            RpIcon(icon: Icons.fastfood, color: Colors.yellow[700]!, size: 24),
            const Text('42', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(width: 12),

            RpIcon(icon: Icons.key, color: Colors.grey[700]!, size: 24),
            const Text('50', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(width: 12),

            RpIcon(icon: Icons.money, color: Colors.green[700]!, size: 24),
            const Text('111', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
