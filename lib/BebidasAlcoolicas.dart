// --- PÁGINA QUE VISUALIZO OS MEUS PRODUTOS, OU SEJA, VEJO A LISTA COM OS PRODUTOS --- //
// --- INTERLIGADA A PÁGINA DE BEBIDA LIST VIEW --- //

import 'package:flutter/material.dart';
import 'package:flutter_application_login/CarrinhoDeCompras.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';
import 'package:flutter_application_login/MyBottomNavigationBar.dart';
import 'BebidasListView.dart';

class BebidasAlcoolicas extends StatefulWidget {
  const BebidasAlcoolicas({Key? key}) : super(key: key);

  @override
  State<BebidasAlcoolicas> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BebidasAlcoolicas> {
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
      body: BebidasListView(), // Substitua o Column pelo BebidasListView
    );
  }
}
