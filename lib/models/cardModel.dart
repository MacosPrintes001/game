// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

AboutCard(imagem, String title, description) {
  return Card(
    elevation: 0.0,
    margin:
        const EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
    color: const Color(0x00000000),
    child: FlipCard(
      direction: FlipDirection.HORIZONTAL,
      side: CardSide.FRONT,
      speed: 1000,
      onFlipDone: (status) {},
      front: Container(
        padding: const EdgeInsets.all(16),
        width: 900,
        height: 400,
        decoration: const BoxDecoration(
          color: Color(0xFF006666),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Image(
              image: AssetImage("$imagem"),
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
      back: Container(
        width: 900,
        height: 400,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xFF006666),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
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
            ),
          ],
        ),
      ),
    ),
  );
}
