import 'package:flutter/material.dart';
import 'package:rp_heroes_screen/src/view/widgets/rp_heroes_screen_body.dart';
import 'package:rp_heroes_screen/src/view/widgets/rp_heroes_screen_header.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpHeroesScreen extends StatelessWidget {
  const RpHeroesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RpViewContainerLayout(header: RpHeroesScreenHeader(), body: RpHeroesScreenBody());
  }
}
