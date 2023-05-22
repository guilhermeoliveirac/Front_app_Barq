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
                alignment: Alignment(-1, 0),
                child: Text(
                  "        Ofertas do Dia",
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
              child: Stack(
                children: [
                  Text(
                    "   Cerveja Spaten 350ml\n   \n   R\$ 25,00\n",
                    style: TextStyle(
                      color: Color(0xFF00265F),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 30,
                    child: Container(
                      width: 75,
                      height: 30,
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
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
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0xFF00265F).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      alignment: Alignment(1, 0),
                      image: AssetImage("assets/images/card11.png"),
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
