import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Inicial> {
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
            onPressed: () {},
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
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text(
                    "   OFERTAS DO DIA!\n"
                    "   Feitas especialmente para você!\n   \n   Ver ofertas",
                    style: TextStyle(color: Colors.white),
                  ),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF00265F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          alignment: Alignment(1, 0),
                          image: AssetImage("assets/images/card1.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ],
            ),
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
                Container(
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
            Container(
              alignment: Alignment(-1, 0),
              child: Text(
                "   Dobradinha de Chopp\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card5.png"),
                      fit: BoxFit.fitHeight)),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment(-1, 0),
              child: Text(
                "   Dobradinha de Chopp\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card5.png"),
                      fit: BoxFit.fitHeight)),
            )
          ],
        ),
      ),
    );
  }
}
