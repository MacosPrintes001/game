import 'package:flutter/material.dart';
import 'package:game/models/cardModel.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              spacing: 8.0, // Espaçamento horizontal entre os cards
              runSpacing: 8.0, // Espaçamento vertical entre as linhas de cards
              children: [
               Cards(
                    context,
                    "https://imgs.search.brave.com/6E-UDv90dt7CL6JA6iHZTd2gKjkIJAi_BTCRErQieVw/rs:fit:457:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC51/c0VQS1llU2VJRnFf/ZHp4MFlsNGlnQUFB/QSZwaWQ9QXBp",
                    "Curupira",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate auctor justo id efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas tristique eget elit nec molestie. Fusce laoreet, ipsum eget dapibus sodales, urna risus facilisis velit, at maximus velit arcu eu velit. Nulla consequat lorem vel elit imperdiet, nec pharetra justo maximus. Integer sit amet faucibus odio. "),
                Cards(
                    context,
                    "https://imgs.search.brave.com/6E-UDv90dt7CL6JA6iHZTd2gKjkIJAi_BTCRErQieVw/rs:fit:457:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC51/c0VQS1llU2VJRnFf/ZHp4MFlsNGlnQUFB/QSZwaWQ9QXBp",
                    "Curupira",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate auctor justo id efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas tristique eget elit nec molestie. Fusce laoreet, ipsum eget dapibus sodales, urna risus facilisis velit, at maximus velit arcu eu velit. Nulla consequat lorem vel elit imperdiet, nec pharetra justo maximus. Integer sit amet faucibus odio. "),
                Cards(
                    context,
                    "https://imgs.search.brave.com/6E-UDv90dt7CL6JA6iHZTd2gKjkIJAi_BTCRErQieVw/rs:fit:457:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC51/c0VQS1llU2VJRnFf/ZHp4MFlsNGlnQUFB/QSZwaWQ9QXBp",
                    "Curupira",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate auctor justo id efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas tristique eget elit nec molestie. Fusce laoreet, ipsum eget dapibus sodales, urna risus facilisis velit, at maximus velit arcu eu velit. Nulla consequat lorem vel elit imperdiet, nec pharetra justo maximus. Integer sit amet faucibus odio. "),
                Cards(
                    context,
                    "https://imgs.search.brave.com/6E-UDv90dt7CL6JA6iHZTd2gKjkIJAi_BTCRErQieVw/rs:fit:457:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC51/c0VQS1llU2VJRnFf/ZHp4MFlsNGlnQUFB/QSZwaWQ9QXBp",
                    "Curupira",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate auctor justo id efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas tristique eget elit nec molestie. Fusce laoreet, ipsum eget dapibus sodales, urna risus facilisis velit, at maximus velit arcu eu velit. Nulla consequat lorem vel elit imperdiet, nec pharetra justo maximus. Integer sit amet faucibus odio. "),
                Cards(
                    context,
                    "https://imgs.search.brave.com/6E-UDv90dt7CL6JA6iHZTd2gKjkIJAi_BTCRErQieVw/rs:fit:457:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC51/c0VQS1llU2VJRnFf/ZHp4MFlsNGlnQUFB/QSZwaWQ9QXBp",
                    "Curupira",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate auctor justo id efficitur. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas tristique eget elit nec molestie. Fusce laoreet, ipsum eget dapibus sodales, urna risus facilisis velit, at maximus velit arcu eu velit. Nulla consequat lorem vel elit imperdiet, nec pharetra justo maximus. Integer sit amet faucibus odio. "),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
