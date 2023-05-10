import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00265F),
          title: Text("BARQ"),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Olá! Bem vindo ao BARQ!"),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "OFERTAS DO DIA!\n" "\nFeitas especialmente para você!",
                      style: TextStyle(color: Colors.white),
                    ),
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF00265F),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/card1.png"),
                            fit: BoxFit.fitHeight)),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
