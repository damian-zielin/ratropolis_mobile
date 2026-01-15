import 'package:flutter/services.dart';

class LoadAssets {
  Future<void> loadAssets() async {
    // ignore: inference_failure_on_instance_creation
    // await Future.delayed(const Duration(seconds: 1));
    // await rootBundle.load('packages/rp_widgets/assets/loading.json');
    await rootBundle.load('packages/rp_game_screen/assets/rat_background.jpg');
  }
}
