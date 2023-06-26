// --- PÁGINA QUE VISUALIZO OS MEUS PRODUTOS ADICIONADO AO CARRINHO DE COMPRAS E REALIZO O ENVIO DO PEDIDO --- //

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarrinhoDeCompras extends StatefulWidget {
  const CarrinhoDeCompras({super.key});

  @override
  State<CarrinhoDeCompras> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarrinhoDeCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 400),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x0f00255e),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4, 3, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Text(
                            '            2X Cerveja Spaten 350ml',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              height: 1.5599022865,
                              letterSpacing: -0.6,
                              color: Color(0xff00255e),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: 150,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 132,
                                    height: 24,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xb200255e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 103,
                                    height: 25,
                                    child: Text(
                                      'Total R\$ 10,00',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5599023104,
                                        letterSpacing: -0.48,
                                        fontStyle: FontStyle.italic,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 117,
                    height: 110,
                    child: Image.asset(
                      "assets/images/card11.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
              width: double.infinity,
              height: 45,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 7, 145, 9),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 6, 1),
                          width: 50,
                          height: 21,
                          child: Icon(
                            Icons.delete, // Ícone a ser exibido
                            size: 25, // Tamanho do ícone
                            color: Color(0xff4f4f4f), // Cor do ícone
                          ),
                        ),
                        Text(
                          'Excluir',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.5599022971,
                            letterSpacing: -0.54,
                            color: Color(0xff4f4f4f),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
