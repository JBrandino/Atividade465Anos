import 'package:flutter/material.dart';
import 'package:portos_pam/Classes/classeAval.dart';
import 'package:portos_pam/Emeg.dart';
import 'package:portos_pam/ListaPortos.dart';
import 'package:portos_pam/Localizacao.dart';
import 'package:portos_pam/TelaPortos.dart';

// Lista de avaliações de porto
List<Avaliacao> avaliacao = [
  Avaliacao(
    'Nome',
    'fulano@gmail.com',
    'Porto Avaliado',
    'Opinião',
  ),
];

class AvaliacaoPorto extends StatefulWidget {
  const AvaliacaoPorto({super.key});

  @override
  _AvaliacaoPortoState createState() => _AvaliacaoPortoState();
}

class _AvaliacaoPortoState extends State<AvaliacaoPorto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Logo e Marca
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 16.0),
                  child: Text(
                    'LOGO\nMARCA',
                    style: TextStyle(
                      fontSize: 28,
                      height: 1.1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 55),

              // Título da Avaliação
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Avalie um porto!!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),

              // Campos de Texto para Avaliação
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome *',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail *',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Porto Avaliado *',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Avaliação *',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomButton(
                    text: 'Pesquisar um lugar',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaPortos()));
                    },
                  ),
                  CustomButton(
                    text: 'Lista de portos',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ListaPortos()));
                    },
                  ),
                  CustomButton(
                    text: 'Números de emergência',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Emergencia()));
                    },
                  ),
                  CustomButton(text: 'Mapa do litoral', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Localizacao()));
                  }),
                ],
              ),
              const SizedBox(height: 60),

              // Botão de Voltar
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 150.0,
                    height: 150.0,
                    child: Image.asset(
                      'img/home.png',
                      width: 100.0,
                      height: 140.0,
                      fit: BoxFit.contain,
                    ),
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

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        width: 465,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(122, 145, 227, 1),
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}