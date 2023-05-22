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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/FundoBebidas.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 300),
                Container(
                  width: 400,
                  height: 347,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 10,
            child: Align(
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/images/bebida.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              child: SizedBox(
                width: 200,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
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
