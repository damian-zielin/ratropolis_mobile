import 'package:flutter/material.dart';
import 'package:rp_user_screen/src/view/widgets/rp_user_screen_body.dart';
import 'package:rp_user_screen/src/view/widgets/rp_user_screen_header.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpUserScreen extends StatelessWidget {
  const RpUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const RpViewContainerLayout(header: RpUserScreenHeader(), body: RpUserScreenBody());
  }
}
