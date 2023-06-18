// --- PÁGINA QUE VISUALIZO OS MEUS PRODUTOS, OU SEJA, VEJO A LISTA COM OS PRODUTOS --- //
// --- INTERLIGADA A PÁGINA DE OFERTAS LIST VIEW --- //

import 'package:flutter/material.dart';
import 'package:flutter_application_login/CarrinhoDeCompras.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';

class VerOfertas extends StatefulWidget {
  const VerOfertas({super.key});

  @override
  State<VerOfertas> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<VerOfertas> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CarrinhoDeCompras()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment(-0.9, 0),
                child: Text(
                  "Ofertas do Dia",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // primeiro container
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xFF00265F).withOpacity(0.10),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  alignment: Alignment(1, 0),
                  image: AssetImage("assets/images/card11.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 4,
                    child: Text(
                      "   Cerveja Spaten 350ml\n\n   R\$ 25,00\n",
                      style: TextStyle(
                        color: Color(0xFF00265F),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 35,
                    child: Container(
                      width: 70,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xb200255e),
                      ),
                      child: Center(
                        child: Text(
                          "R\$ 15,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        width: 65,
                        height: 21.97,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffdb0000),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              '10% off',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
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
    );
  }
}
