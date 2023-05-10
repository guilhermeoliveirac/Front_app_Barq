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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF00265F),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
