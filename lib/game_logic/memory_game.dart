import 'dart:math';

class MemoryGame {
  List<int?> _cards;
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

  void selectCard(int index) {
    if (_selectedCardIndex == null) {
      _selectedCardIndex = index;
    } else if (_selectedCardIndex != index) {
      if (_cards[_selectedCardIndex!] == _cards[index]) {
        _cards[_selectedCardIndex!] = null;
        _cards[index] = null;
        if (_cards.every((card) => card == null)) {
          _isGameOver = true;
        }
      }
      _selectedCardIndex = null;
    }
  }
}

