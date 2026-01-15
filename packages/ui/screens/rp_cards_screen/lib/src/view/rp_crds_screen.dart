import 'package:flutter/material.dart';
import 'package:rp_cards_screen/src/view/widgets/rp_cards_screen_body.dart';
import 'package:rp_cards_screen/src/view/widgets/rp_cards_screen_header.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpCrdsScreen extends StatelessWidget {
  const RpCrdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RpViewContainerLayout(header: RpCardsScreenHeader(), body: RpCardsScreenBody());
  }
}
