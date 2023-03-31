import 'package:flutter/material.dart';
import 'package:game/components/aboutCard.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var curupi =
        """O Curupira é uma entidade protetora das florestas que tem pés virados para trás e cabelos vermelhos.
Ele é conhecido por proteger os animais da floresta e punir os caçadores que os matam.""";
    var saci =
        """O Saci-Pererê é um pequeno duende de uma perna só que é conhecido por suas travessuras e brincadeiras na floresta.
Ele é uma figura popular da cultura brasileira e é frequentemente retratado em desenhos animados e livros infantis.""";
    var boto =
        """Segundo a lenda, o boto é um homem encantado que se transforma em um golfinho cor-de-rosa durante a noite.
Ele é conhecido por seduzir mulheres e engravidá-las, e muitas vezes é responsabilizado por casos de gravidez não planejada na região.""";
    var iara =
        """A lenda da Iara conta a história de uma sereia da Amazônia que seduz homens com sua beleza e canto encantador.
Segundo a lenda, aqueles que são atraídos por ela acabam sendo arrastados para as profundezas da água.""";
    var boit =
        """Segundo a lenda, Boitatá é uma serpente gigante que possui olhos flamejantes e um corpo coberto de chamas.
Ela é conhecida por proteger as florestas e os animais contra aqueles que tentam destruí-los. 
Boitatá é temida pelos habitantes locais e é considerada uma entidade sobrenatural poderosa.""";

    var cuca =
        """A Cuca é uma lenda do folclore brasileiro que é frequentemente retratada como uma bruxa velha e malvada que habita as florestas.
A Cuca é conhecida por ser uma figura temida e muitas vezes usada para assustar crianças desobedientes. 
Por meio de Monteiro Lobato, a forma de jacaré da cuca se popularizou""";
    var mula =
        """A Mula sem Cabeça é uma lenda do folclore brasileiro que se originou na região nordeste do país. 
A história conta que a Mula sem Cabeça é uma mula preta que foi amaldiçoada e transformada em uma criatura sobrenatural. 
Ela é descrita como um animal que tem um corpo grande, cascos de ferro e um fogo que sai do pescoço onde deveria estar a cabeça.""";
    var caipo =
        """A Caipora é uma figura lendária do folclore brasileiro que é conhecida por ser a guardiã das florestas. 
Ela é descrita como uma criatura pequena e peluda, com olhos vermelhos brilhantes e uma risada assustadora. 
A Caipora é geralmente vista como uma figura protetora dos animais e das plantas da floresta.""";

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutCard(
              'assets/imagensLendas/curupira.png',
              'Curupira',
              curupi,
            ),
            AboutCard(
              'assets/imagensLendas/saci.png',
              'Saci',
              saci,
            ),
            AboutCard(
              'assets/imagensLendas/boto.png',
              'boto-cor-de-rosa',
              boto,
            ),
            AboutCard(
              'assets/imagensLendas/iara.png',
              'Iara',
              iara,
            ),
            AboutCard(
              'assets/imagensLendas/boitata.png',
              'Boitatá',
              boit,
            ),
            AboutCard(
              'assets/imagensLendas/cuca.png',
              'cuca',
              cuca,
            ),
            AboutCard(
              'assets/imagensLendas/mula.png',
              'MULA SEM CABEÇA',
              mula,
            ),
            AboutCard(
              'assets/imagensLendas/caipo.png',
              'caipora',
              caipo,
            ),
          ],
        ),
      ),
    );
  }
}
