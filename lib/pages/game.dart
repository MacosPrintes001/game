import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class my {}

class _GamePageState extends State<GamePage> {
  List<String> imagens = [
    'assets/imagensLendas/boto.png',
    'assets/imagensLendas/boto.png',
    'assets/imagensLendas/caipo.png',
    'assets/imagensLendas/caipo.png',
    'assets/imagensLendas/cuca.png',
    'assets/imagensLendas/cuca.png',
    'assets/imagensLendas/curupira.png',
    'assets/imagensLendas/curupira.png',
    'assets/imagensLendas/saci.png',
    'assets/imagensLendas/saci.png',
    'assets/imagensLendas/mula.png',
    'assets/imagensLendas/mula.png',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagens.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imagens.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          return Column(
            children: [
              FlipCard(
                front: const Image(
                  image: AssetImage(
                    'assets/imagensLendas/back.png',
                  ),
                ),
                back: Image(
                  image: AssetImage(imagens[index]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
