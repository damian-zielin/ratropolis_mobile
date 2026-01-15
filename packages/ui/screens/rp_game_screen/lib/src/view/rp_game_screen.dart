import 'package:flutter/material.dart';
import 'package:rp_widgets/rp_widgets.dart';

class RpGameScreen extends StatefulWidget {
  const RpGameScreen({super.key});

  @override
  State<RpGameScreen> createState() => _RpGameScreenState();
}

class _RpGameScreenState extends State<RpGameScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final maxScroll = _scrollController.position.maxScrollExtent;
      _scrollController.jumpTo(maxScroll / 2);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Image.asset(
              'assets/rat_background.jpg',
              package: 'rp_game_screen',
              fit: BoxFit.cover,
              width: screenWidth * 2,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),
        const Column(
          children: [
            RpGameHeader(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Game Screen', style: TextStyle(fontSize: 24, color: Colors.white))],
              ),
            ),
            RpGameBottomNavBar(),
          ],
        ),
      ],
    );
  }
}
