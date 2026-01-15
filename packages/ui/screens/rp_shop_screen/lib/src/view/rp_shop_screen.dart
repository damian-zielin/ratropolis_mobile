import 'package:flutter/material.dart';
import 'package:rp_shop_screen/src/view/widgets/rp_shop_screen_body.dart';
import 'package:rp_shop_screen/src/view/widgets/rp_shop_screen_header.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpShopScreen extends StatelessWidget {
  const RpShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RpViewContainerLayout(header: RpShopScreenHeader(), body: RpShopScreenBody());
  }
}
