// --- PÁGINA QUE LISTA OS MEUS PRODUTOS --- //
// --- INTERLIGADA A PÁGINA DE BEBIDA ALCOOLICAS, OU SEJA, ELA É CHAMADA NESSA CLASSE E REALIZA O RETORNO --- //

import 'package:flutter/material.dart';
import 'package:flutter_application_login/VisualizandoBebida.dart';

class BebidasListView extends StatelessWidget {
  const BebidasListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: 6, // Número total de itens
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
                      "   Cerveja Spaten 350ml\n   \n\n",
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
                    image: AssetImage("assets/images/card${index + 6}.png"),
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
