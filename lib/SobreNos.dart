import 'package:flutter/material.dart';
import 'package:portos_pam/Classes/classeSobre.dart';
import 'package:portos_pam/Emeg.dart';
import 'package:portos_pam/ListaPortos.dart';
import 'package:portos_pam/Localizacao.dart';
import 'package:portos_pam/TelaPortos.dart';

List<Sobre> sobre = [
  Sobre('Quem nós somos', 'App 465 anos', 'Proposta'),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sobre Nós',
      home: Sobrenos(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sobrenos extends StatelessWidget {
  const Sobrenos({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortoDeSP(); // Aqui é onde você precisa ter certeza que PortoDeSP não precisa de const
  }
}

class PortoDeSP extends StatelessWidget {
  const PortoDeSP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Remover const aqui também é opcional, mas é bom para padronizar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sobre nós',
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Um aplicativo informativo para portos, mesmo sem internet? É possível!',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Enquanto a maioria dos aplicativos depende de uma conexão com a internet para funcionar, O APLICATIVO se destaca por oferecer uma experiência completa mesmo offline.',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Como funciona?',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Ao baixar o aplicativo, você terá acesso a todas as informações essenciais sobre os portos do litoral de São Paulo, incluindo:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(left: 80.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• Localização e contato: Encontre facilmente o porto que você procura com nosso mapa interativo e informações de contato completas, mesmo sem sinal.',
                      style: TextStyle(fontSize: 13.5),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• Facilidades: Descubra quais serviços e comodidades cada porto oferece, como rampas de acesso, banheiros, restaurantes e lojas, tudo disponível offline.',
                      style: TextStyle(fontSize: 13.5),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• Atividades: Explore as diversas atividades disponíveis em cada porto, como pesca, passeios de barco, mergulho e muito mais, mesmo sem internet.',
                      style: TextStyle(fontSize: 13.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Botões
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CustomButton(text: 'Pesquisar um lugar', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaPortos()));
                  }),
                  CustomButton(text: 'Lista de portos', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ListaPortos()));
                  }),
                  CustomButton(text: 'Números de emergência', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Emergencia()));
                  }),
                  CustomButton(text: 'Mapa do litoral', onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Localizacao()));
                  }),
                ],
              ),
              const SizedBox(height: 2),
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
      padding: const EdgeInsets.symmetric(vertical: 3.0),
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
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}