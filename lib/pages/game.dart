import 'package:flutter/material.dart';
import 'package:game/game_logic/memory_game.dart';
import 'package:flip_card/flip_card.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late MemoryGame _game;
  var clicks = 0;

  @override
  void initState() {
    super.initState();
    _game = MemoryGame();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    clicks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: _game.cards.length,
        itemBuilder: (context, index) {
          if (_game.cards[index] == null) {
            return const SizedBox.shrink();
          } else {
            return FlipCard(
              onFlip: () {
                setState(() {

                  clicks += 1;
                  print(clicks);
                  _game.selectCard(index, context);
                });
              },
              front: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  'assets/imagensLendas/back.png',
                ),
              ),
              back: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  'assets/imagensLendas/${_game.cards[index]}.png',
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
