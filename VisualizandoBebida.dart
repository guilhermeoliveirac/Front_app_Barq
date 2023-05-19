import 'package:flutter/material.dart';

class VisualizandoBebida extends StatefulWidget {
  const VisualizandoBebida({super.key});

  @override
  State<VisualizandoBebida> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<VisualizandoBebida> {
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
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/FundoBebidas.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 406,
              child: Align(
                child: SizedBox(
                  width: 440,
                  height: 432,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            /*
            Positioned(
              left: 9,
              top: 30,
              child: Align(
                child: Image.asset(
                  "assets/images/FundoBebidas.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            */
          ],
        ), //
      ),
      // MENU INFERIOR
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
