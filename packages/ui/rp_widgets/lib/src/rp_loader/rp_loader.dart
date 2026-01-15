import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RpLoader extends StatelessWidget {
  const RpLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/loading.json', package: 'rp_widgets', fit: BoxFit.contain);
  }
}
