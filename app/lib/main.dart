import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratropolis_mobile/game_root.dart';
import 'package:ratropolis_mobile/src/utils/load_assets.dart';
import 'package:rp_widgets/rp_widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const RatropolisGame());
}

class RatropolisGame extends StatefulWidget {
  const RatropolisGame({super.key});

  @override
  State<RatropolisGame> createState() => _RatropolisGameState();
}

class _RatropolisGameState extends State<RatropolisGame> {
  final LoadAssets _loader = LoadAssets();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ratropolis',
      theme: ThemeData(fontFamily: 'Bangers', useMaterial3: true),
      home: FutureBuilder(
        future: _loader.loadAssets(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const GameRoot();
          } else {
            return const Center(child: SizedBox(height: 200, child: RpLoader()));
          }
        },
      ),
    );
  }
}
