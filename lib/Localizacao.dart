import 'package:flutter/material.dart';
import 'package:portos_pam/Classes/classesLocal.dart';
import 'package:portos_pam/Emeg.dart';
import 'package:portos_pam/ListaPortos.dart';
import 'package:portos_pam/TelaPortos.dart';

List<Local> localizacao = [
  Local(55, 'Rua de Santos', 'Bairro de Santos', 123456789, 'Santos'),
];

class Localizacao extends StatelessWidget {
  const Localizacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
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
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sua Localização',
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                height: 640,
                width: 465,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/mapalitoral.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 55),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Centraliza os botões
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