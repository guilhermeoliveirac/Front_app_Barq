import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CarrinhoDeCompras extends StatefulWidget {
  const CarrinhoDeCompras({super.key});

  @override
  State<CarrinhoDeCompras> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CarrinhoDeCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00265F),
        centerTitle: true,
        title: Text("BARQ"),
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
                  "        Se carrinho está vazio! \n        Volte para nosso menu e acesse nossas \n        categorias e realize seu pedido!",
                  style: TextStyle(
                    color: Color(0xFF00265F),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
