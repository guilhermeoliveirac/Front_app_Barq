import 'package:flutter/material.dart';
import 'package:flutter_application_login/BebidasAlcoolicas.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';

import 'CarrinhoDeCompras.dart';
import 'MyBottomNavigationBar.dart';

class Petiscos extends StatefulWidget {
  @override
  _PetiscosState createState() => _PetiscosState();
}

class _PetiscosState extends State<Petiscos> {
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
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CarrinhoDeCompras()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: PetiscosListView(),
    );
  }
}

class PetiscosListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: 10, // Número total de itens
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VisualizandoBebida(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 15.0),
                alignment: Alignment(-1, 0),
                child: Stack(
                  children: [
                    Text(
                      "   Bandeja de pestiscos\n   \n\n",
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
                            "RS 30,00",
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
                    image: AssetImage("assets/images/card${16}.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
