// --- PÁGINA QUE VISUALIZO A MINHA HOME, COM TODAS AS OPÇÕES PRO USUÁRIO NAVEGAR --- //

import 'package:flutter/material.dart';
import 'package:flutter_application_login/BebidasAlcoolicas.dart';
import 'package:flutter_application_login/CarrinhoDeCompras.dart';
import 'package:flutter_application_login/VerOfertas.dart';
import 'package:provider/provider.dart';
import 'MyBottomNavigationBar.dart';

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  State<Inicial> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Inicial> {
  // bottom navigation
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
        automaticallyImplyLeading: false,
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
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "        Olá, Bem vindo ao BARQ!",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerOfertas()));
                  },
                  child: Container(
                    alignment: Alignment(-1, 0),
                    child: Stack(
                      children: [
                        Text(
                          "   OFERTAS DO DIA!\n"
                          "   Feitas especialmente para você!\n   \n   Ver ofertas",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Positioned(
                          right: 100,
                          top: 10,
                          bottom: -47,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    width: 350,
                    height: 115,
                    decoration: BoxDecoration(
                        color: Color(0xFF00265F),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            alignment: Alignment(1, 0),
                            image: AssetImage("assets/images/card1.png"),
                            fit: BoxFit.fitHeight)),
                  ),
                ),
              ],
            ),
            // CARDS CATEGORIAS
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "     Menu Categorias ",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // navegando para outras páginas
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BebidasAlcoolicas()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "   \n   Bebidas\n Alcoólicas\n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF00265F),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            alignment: Alignment(0, 0),
                            image: AssetImage("assets/images/card2.png"),
                            fit: BoxFit.fitHeight)),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "   \n      Bebidas\n          não \n    Alcoólicas\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF00265F),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage("assets/images/card3.png"),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "     Petiscos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFF00265F),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          alignment: Alignment(0, 0),
                          image: AssetImage("assets/images/card4.png"),
                          fit: BoxFit.fitHeight)),
                )
              ],
            ),

            // CARDS DOS MAIS PEDIDOS
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  "     Mais pedidos ",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Dobradinha de Chopp\n   15,00 \n\n   Adicionar ao carrinho        ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Positioned(
                    right: -4,
                    top: 10,
                    bottom: -45,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card5.png"),
                      fit: BoxFit.fitHeight)),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Dobradinha de Chopp\n   15,00 \n\n   Adicionar ao carrinho        ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Positioned(
                    right: -4,
                    top: 10,
                    bottom: -45,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card5.png"),
                      fit: BoxFit.fitHeight)),
            ),
          ],
        ),
      ),
    );
  }
}
