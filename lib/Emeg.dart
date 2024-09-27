import 'package:flutter/material.dart';
import 'package:portos_pam/Classes/classeNum.dart';

List<NumPorto> emergencia = [
  NumPorto(
    1,
    2,
    'porto@gmail.com',
  ),
];

class Emergencia extends StatelessWidget {
  const Emergencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              GestureDetector(
                onTap: () {}, 
                child: Column(
                  children: [
                    Image.asset(
                      'img/emeg1.png',
                        width: 421,
                        height: 320,
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                      'Emergências Marítimas/Fluviais',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: AutofillHints.countryName,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Telefone 185',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child:Text('Marinha - Emergências Marítimas e Fluviais',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: AutofillHints.countryName,
                    fontWeight: FontWeight.bold
              ))),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {}, 
                child: Column(
                  children: [
                    Image.asset(
                      'img/emeg2.png',
                      width: 421,
                      height: 320,
                    ),
                  ],
                ),
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