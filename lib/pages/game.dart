import 'package:flutter/material.dart';
import 'package:game/game_logic/memory_game.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late MemoryGame _game;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _game = MemoryGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jogo da Memória')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: _game.cards.length,
        itemBuilder: (context, index) {
          if (_game.cards[index] == null) {
            return const SizedBox.shrink();
          } else {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _game.selectCard(index);
                });
              },
              child: Card(
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
