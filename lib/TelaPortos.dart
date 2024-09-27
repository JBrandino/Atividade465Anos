import 'package:flutter/material.dart';
import 'package:portos_pam/Aval.dart';
import 'package:portos_pam/Classes/classePortos.dart';
import 'package:portos_pam/Emeg.dart';
import 'package:portos_pam/ListaPortos.dart';
import 'package:portos_pam/Localizacao.dart' as localizacao_lib;
import 'package:portos_pam/SobreNos.dart' as sobrenos_lib;

List<Portos> portos = [
  Portos(
    'Santos',
    'historia',
    'Litoral',
    1,
    'Não Avaliado',
    10,
  ),
];

void main() {
  runApp(const TelaPortos());
}

class TelaPortos extends StatefulWidget {
  const TelaPortos({super.key});

  @override
  State<TelaPortos> createState() => _TelaPortosState();
}

class _TelaPortosState extends State<TelaPortos> {
  get buttonWidth => 250;

  get buttonHeight => 35;

  get buttonMarginTop => 15;

  @override
  Widget build(BuildContext context) {
    const color = Color.fromRGBO(122, 145, 227, 1);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: Center(
                child: Container(
                  height: 111,
                  width: 116,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 50.0,
              ),
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.tune, size: 32.0),
                    onPressed: () {},
                  ),
                  const Spacer(flex: 17),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, size: 32.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 255,
              width: 455,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/portos.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Alinha os botões à esquerda
              children: <Widget>[
                CustomButton(text: 'LISTA DE TODOS OS PORTOS', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ListaPortos()));
                }),
                CustomButton(text: 'NÚMEROS PARA EMERGÊNCIA', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Emergencia()));
                }),
                CustomButton(text: 'AVALIE UM PORTO', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AvaliacaoPorto()));
                }),
                CustomButton(text: 'MAPA DO LITORAL PAULISTA', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const localizacao_lib.Localizacao()));
                }),
                CustomButton(text: 'SOBRE NÓS', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const sobrenos_lib.Sobrenos()));
                }),
              ],
            ),
            const SizedBox(height: 80),
            Container(
              margin: const EdgeInsets.only(
                left: 0.0,
                top: 10.0,
                right: 375.0,
                bottom: 10.0,
              ),
              height: 63,
              width: 65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/buttonportos.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        width: 405,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(122, 145, 227, 1),
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: onPressed,
          child: Padding( // Adiciona padding ao texto
            padding: const EdgeInsets.only(left: 20.0), // Padding à esquerda
            child: Align( // Alinha o texto à esquerda
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ),
    );
  }
}