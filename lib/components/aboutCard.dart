import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

AboutCard(imagem, String title, description) {
  return Center(
    child: Card(
      elevation: 0.0,
      margin: const EdgeInsets.only(
          left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: const Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        side: CardSide.FRONT,
        speed: 1000,
        onFlipDone: (status) {},
        front: Container(
          padding: const EdgeInsets.all(16),
          width: 900,
          height: 500,
          decoration: const BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Image(
                  image: AssetImage("$imagem"),
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
        back: Container(
          width: 900,
          height: 500,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    Text(
                      title.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('$description',
                        textAlign: TextAlign.justify,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
