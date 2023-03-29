import 'package:flutter/material.dart';
import 'package:game/pages/about.dart';
import 'package:game/pages/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  callGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const GamepPage(),
      ),
    );
  }

  callAbout() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double boxSize = 75;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Ink(
                width: boxSize,
                height: boxSize,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                ),
                child: InkWell(
                  onTap: callGame,
                  child: const Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Ink(
                width: boxSize,
                height: boxSize,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.rectangle,
                ),
                child: InkWell(
                  onTap: callAbout,
                  child: const Icon(
                    Icons.info,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
