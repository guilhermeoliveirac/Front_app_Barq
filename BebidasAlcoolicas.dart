import 'package:flutter/material.dart';
import 'package:flutter_application_login/CarrinhoDeCompras.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';

class BebidasAlcoolicas extends StatefulWidget {
  const BebidasAlcoolicas({super.key});

  @override
  State<BebidasAlcoolicas> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BebidasAlcoolicas> {
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
                alignment: Alignment(-1, 0),
                child: Text(
                  "        Bebidas Alcoólicas",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            // primeiro container
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Cerveja Spaten 350ml\n   \n\n",
                    style: TextStyle(
                      color: Color(0xFF00265F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 30,
                    child: Container(
                      width: 93,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xb200255e),
                      ),
                      child: Center(
                        child: Text(
                          "RS 15,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card6.png"),
                      fit: BoxFit.fitHeight)),
            ),

            // Segundo container
            SizedBox(height: 15),
            // navegando em páginas
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VisualizandoBebida()));
              },
              child: Container(
                alignment: Alignment(-1, 0),
                child: Stack(
                  children: [
                    Text(
                      "   Cerveja Heineken 600 ml\n   \n\n",
                      style: TextStyle(
                        color: Color(0xFF00265F),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 30,
                      child: Container(
                        width: 93,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xb200255e),
                        ),
                        child: Center(
                          child: Text(
                            "RS 10,00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                width: 350,
                height: 90,
                decoration: BoxDecoration(
                    color: Color(0xFF00265F).withOpacity(0.10),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        alignment: Alignment(1, 0),
                        image: AssetImage("assets/images/card7.png"),
                        fit: BoxFit.fitHeight)),
              ),
            ),
            // Terceiro container
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Drink Laranja com Morango\n   \n\n",
                    style: TextStyle(
                      color: Color(0xFF00265F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 30,
                    child: Container(
                      width: 93,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xb200255e),
                      ),
                      child: Center(
                        child: Text(
                          "RS 23,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card8.png"),
                      fit: BoxFit.fitHeight)),
            ),
            // Quarto container
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Drink Amoreco com vodka\n   \n\n",
                    style: TextStyle(
                      color: Color(0xFF00265F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 30,
                    child: Container(
                      width: 93,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xb200255e),
                      ),
                      child: Center(
                        child: Text(
                          "RS 23,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card9.png"),
                      fit: BoxFit.fitHeight)),
            ),
            // Quinto container
            SizedBox(height: 15),
            Container(
              alignment: Alignment(-1, 0),
              child: Stack(
                children: [
                  Text(
                    "   Drink Morango gin\n   \n\n",
                    style: TextStyle(
                      color: Color(0xFF00265F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 9,
                    top: 30,
                    child: Container(
                      width: 93,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xb200255e),
                      ),
                      child: Center(
                        child: Text(
                          "RS 25,00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card10.png"),
                      fit: BoxFit.fitHeight)),
            ),
          ], //
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color(0xFF00265F),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Solicitar Garçom',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout_outlined),
            label: 'Sair',
          ),
        ],
      ),
    );
  }
}
