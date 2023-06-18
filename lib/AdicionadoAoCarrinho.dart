// --- PÁGINA DO POPUP AO CLICAR EM ADICIONAR AO CARRNHO --- //
// --- INTERLIGADA A PÁGINA DE VISUZALIDANDO BEBEIDA --- //

import 'package:flutter/material.dart';

class AdicionadoAoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Garçom solicitado!"),
      content: Text("Em instantes lhe atenderá, aguarde!"),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Ação para "Ver Carrinho"
          },
          child: Text(
            "Ver Carrinho",
            style: TextStyle(
              color: Color(0xFF00265F),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Ação para "Continuar Comprando"
          },
          child: Text(
            "Continuar Comprando",
            style: TextStyle(
              color: Color(0xFF00265F),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Fechar",
            style: TextStyle(
              color: Color(0xFF00265F),
            ),
          ),
        ),
      ],
    );
  }
}
