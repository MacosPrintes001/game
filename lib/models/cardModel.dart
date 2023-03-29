// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

Cards(context, imagem, title, description) {
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
        decoration: const BoxDecoration(
          color: Color(0xFF006666),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("$imagem"),
            Text('$title', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
      back: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF006666),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$description',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    ),
  );
}
