import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SaoSebastiao extends StatelessWidget {
  const SaoSebastiao({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagens = [
      'img/carrosel1.png',
      'img/carrosel2.png',
      'img/carrosel3.png',
      'img/carrosel4.png',
      'img/carrosel5.png',
    ];

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
                  'São Sebastião',
                  style: TextStyle(
                    fontSize: 42,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 320.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9, // Ajusta para não ficar grudado
                ),
                items: imagens.map((imagem) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0), // Espaço lateral
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagem),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const ExpansionTile(
              title: Text('História do porto'),
              leading: Icon(Icons.arrow_drop_up),
              trailing: Icon(Icons.arrow_drop_down),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'O canal de São Sebastião, dada sua configuração natural, é considerado a 3ª melhor região portuária do mundo, tendo sido por isto, desde os séculos passados, procurado pelos navios mercantes e naus piratas trazendo intenso movimento comercial a São Sebastião. No século 19, a construção das estradas de ferro foi fator decisivo da definitiva hegemonia dos portos do Rio de Janeiro e Santos principalmente, relegando a região do litoral norte paulista, em termos comerciais, praticamente ao abandono. No século 20, em 1.934, a União concedeu ao Estado de São Paulo, autorização para construir, aparelhar e explorar o Porto de São Sebastião por um período de 60 anos. Em 20 de janeiro de 1.955 é aberto ao tráfego, mas somente em 1.963 é que entra em operação. A área do PORTO ORGANIZADO no Porto de São Sebastião é limitada, ao norte, pela desembocadura do rio Juqueriquere, na sua margem esquerda, e ao sul, pela ponta do Toque-Toque, compreendendo ainda o trecho ao longo da costa da Ilha de São Sebastião, entre a Ponta das Canas ao norte, e a Ponta da Sela ao sul.',
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
              ExpansionTile(
                title: const Text('Localização do porto'),
                leading: const Icon(Icons.arrow_drop_up),
                trailing: const Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'img/mapa_sao_sebastiao.png',  
                          width: double.infinity,
                          height: 200, 
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 16),  
                        const Text(
                          'São Sebastião, São Paulo',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'BR-101 - Centro, São Sebastião - SP, 11600-000',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Avenida Doutor Altino Arantes, nº 544, Centro, São Sebastião - SP',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text('Números portuários'),
                leading: Icon(Icons.arrow_drop_up),
                trailing: Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: <Widget>[
                        SizedBox(height: 45), 
                        Text(
                          'Sala de Estado\n(12) 3892-1550 / (12) 3892-1555 / (12) 3892-3133 ',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 25), 
                        Text(
                          'Números para emergências marítimas / fluviais\nDisque 185 ',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 25),
                        Text(
                          'Email de Contato\nSecretaria',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 25),
                        Text(
                          'delssebastiao.secom@marinha.mil.br',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 45),
                      ],
                    ),
                  ),
                ],
              ),
              const ExpansionTile(
                title: Text('Horário de funcionamento e preços'),
                leading: Icon(Icons.arrow_drop_up),
                trailing: Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Segunda a quinta das 9:00h às 12:30h',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Serviços para Embarcação',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Alteração de dados cadastrais da embarcação e/ou do proprietário'),
                        Text('R\$ 30,00', style: TextStyle(color: Colors.red)),
                        SizedBox(height: 8),
                        Text('Cancelamento de Inscrição de Embarcação'),
                        Text('R\$ 5,00', style: TextStyle(color: Colors.red)),
                        SizedBox(height: 8),
                        Text('Inscrição de Embarcação e Emissão do TIE'),
                        Text('R\$ 30,00', style: TextStyle(color: Colors.red)),
                        SizedBox(height: 8),
                        Text('Inscrição de Embarcação Miúda e Emissão do TIEM'),
                        Text('R\$ 30,00', style: TextStyle(color: Colors.red)),
                        SizedBox(height: 8),
                        Text('Transferência de Propriedade e/ou Jurisdição de Embarcação'),
                        Text('R\$ 30,00', style: TextStyle(color: Colors.red)),
                        SizedBox(height: 8),
                        Text(
                          'Termo de Entrega de Embarcação apreendida, que se encontra nas CP/DL/AG (por dia de apreensão)',
                        ),
                        Text('R\$ 50,00', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
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

void main() {
  runApp(const MaterialApp(
    home: SaoSebastiao(),
  ));
}