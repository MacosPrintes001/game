import 'dart:math';
import 'package:flutter/material.dart';
import 'package:game/pages/game.dart';
import 'package:game/pages/home.dart';

class MemoryGame {
  final List<int?> _cards;
  int? _selectedCardIndex;
  bool _isGameOver;

  MemoryGame()
      : _cards = List.generate(8, (index) => index + 1)
          ..addAll(List.generate(8, (index) => index + 1)),
        _selectedCardIndex = null,
        _isGameOver = false {
    _shuffleCards();
  }

  List<int?> get cards => _cards;
  int? get selectedCardIndex => _selectedCardIndex;
  bool get isGameOver => _isGameOver;

  void _shuffleCards() {
    final random = Random();
    for (var i = _cards.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);
      final temp = _cards[i];
      _cards[i] = _cards[j];
      _cards[j] = temp;
    }
  }

  void selectCard(int index, context) {
    if (_selectedCardIndex == null) {
      _selectedCardIndex = index;
    } else if (_selectedCardIndex != index) {
      if (_cards[_selectedCardIndex!] == _cards[index]) {
        _cards[_selectedCardIndex!] = null;
        _cards[index] = null;
        if (_cards.every((card) => card == null)) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Você Venceu!'),
              content: const Text('Incrivél você completou o jogo'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GamePage(),
                      ),
                    );
                  },
                  child: const Text('Jogar de Novo'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text('Voltar ao Menu'),
                ),
              ],
            ),
          );
          _isGameOver = true;
        }
      }
      _selectedCardIndex = null;
    }
  }
}

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = 'assets/imagensLendas/back.png';
  List<String> cards_list = [
    'assets/imagensLendas/1.png',
    'assets/imagensLendas/2.png',
    'assets/imagensLendas/3.png',
    'assets/imagensLendas/4.png',
    'assets/imagensLendas/5.png',
    'assets/imagensLendas/6.png',
    'assets/imagensLendas/7.png',
    'assets/imagensLendas/8.png',
  ];

  final int cardCount = 32;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
