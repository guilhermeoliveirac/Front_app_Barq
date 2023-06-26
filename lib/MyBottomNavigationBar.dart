// --- PÁGINA DOS MEUS BOTÕES DE NAVEGAÇÃO INFERIOR, É CHAMADO PELA AS OUTRAS CLASSES --- //
// --- INTERLIGADA A TODAS AS PÁGINAS QUE É CHAMADO --- //

import 'package:flutter/material.dart';
import 'package:flutter_application_login/AdicionadoAoCarrinho.dart';
import 'package:flutter_application_login/BebidasAlcoolicas.dart';
import 'package:flutter_application_login/Login.dart';
import 'package:provider/provider.dart';
import 'package:flutter/rendering.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          // Navegar para a página principal apenas quando for clicado
          onTap(index);
        } else if (index == 1) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Garçom solicitado!"),
                content: Text("Em instantes lhe atenderá, aguarde!"),
                actions: <Widget>[
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
            },
          );
        } else if (index == 2) {
          // Navegar para a página de login
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        }
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
          icon: InkWell(
            onTap: () {
              // Exibir o AlertDialog ao clicar em "Solicitar Garçom"
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Garçom solicitado!"),
                    content: Text("Em instantes lhe atenderá, aguarde!"),
                    actions: <Widget>[
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
                },
              );
            },
            child: Icon(
              Icons.help,
              color: currentIndex == 1 ? Colors.blueAccent : Colors.white,
            ),
          ),
          label: 'Solicitar Garçom',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout_outlined),
          label: 'Sair',
        ),
      ],
    );
  }
}
