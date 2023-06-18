// --- PÁGINA DE VISUALIZAR BEBIDA E ADICIONAR AO CARRINHO --- //

import 'package:flutter/material.dart';

class VisualizandoBebida extends StatefulWidget {
  const VisualizandoBebida({Key? key}) : super(key: key);

  @override
  State<VisualizandoBebida> createState() => _VisualizandoBebidaState();
}

class _VisualizandoBebidaState extends State<VisualizandoBebida> {
  int _currentIndex = 0;
  int _quantity = 0; // Variável para controlar a quantidade

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        top: 100, // Defina a posição vertical desejada
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (_quantity > 0) {
                                        _quantity--;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  '$_quantity',
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      _quantity++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      'Adicionado ao carrinho com sucesso!'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Lógica para adicionar ao carrinho
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Adicionar ao carrinho'),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(250, 40),
                                        backgroundColor: Color(0xFF00265F),
                                        primary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Continuar comprando'),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(250, 40),
                                        backgroundColor: Colors.white,
                                        primary: Color(0xFF00265F),
                                        onPrimary: Color(0xFF00265F),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(370, 62),
                            backgroundColor: Color(0xFF00265F),
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text('Adicionar ao carrinho'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 8,
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
        ],
      ),
    );
  }
}
