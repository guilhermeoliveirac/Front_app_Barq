import 'package:flutter/material.dart';
import 'package:flutter_application_login/Inicial.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Login> {
  // para funcionar o checkbox
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/inicial.png",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BARQ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "\n Seu cardápio Digital\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Inicial()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 62),
                  backgroundColor: Color(0xFF00265F),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Acessar Cardápio",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  // Popup de solicitar garçom
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
                                  selectionColor: Color(0xFF00265F),
                                )),
                          ],
                        );
                      });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 62),
                  backgroundColor: Colors.white,
                  primary: Color(0xFF00265F),
                  onPrimary: Color(0xFF00265F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Solicitar Garçom",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: Color(0xFF00265F),
                    side: BorderSide(width: 1.5, color: Colors.white),
                  ),
                  Text(
                    "Li e aceito os termos de uso",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
