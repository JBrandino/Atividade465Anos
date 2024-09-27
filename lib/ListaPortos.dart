import 'package:flutter/material.dart';
import 'package:portos_pam/PortoLitoralNorte.dart';


class ListaPortos extends StatelessWidget {
const ListaPortos ({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SaoSebastiao()));
              },
              splashColor: Colors.transparent, 
              hoverColor: Colors.transparent,
              child: Column(
              children: [               
                const Text('PORTO DO LITORAL NORTE',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                  Image.asset(
                  'img/PORTO-DO-LITORAL-NORTE.png', 
                  width: 421,
                  height: 320,
                )
            ],
            ),
            ),
            
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent, 
              hoverColor: Colors.transparent,
              child: Column(
              children: [ 
                const Text('PORTO DA BAIXADA SANTISTA',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                'img/PORTO-DA-BAIXADA-SANTISTA.png', 
                  width: 421,
                  height: 320,
              )
            ],
            ),
            ),
            
            
            InkWell(
              onTap: () {},
              splashColor: Colors.transparent, 
              hoverColor: Colors.transparent,
              child: Column(
              children: [ 
                const Text('PORTO DO LITORAL SUL',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                'img/PORTO-DO-LITORAL-SUL.png', 
                  width: 421,
                  height: 320,
              ),

            ],
            ),
            ),
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
            const SizedBox(height: 5),
          ],
        ),
      ),
    ),
    );
 }
}

