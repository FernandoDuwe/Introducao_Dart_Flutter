/*
  Enunciado: Vamos finalmente criar a nossa calculadora…

             Ela deve possuir dois TextFields em campo, com os valores a calcular
             e quatro botões:

             +

             -

             *

             / 
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController valor1Controller = new TextEditingController();
  TextEditingController valor2Controller = new TextEditingController();

  final _snackKey = GlobalKey<ScaffoldMessengerState>();

  double _resultado = 0;

  void _calcular(String prOperacao) {
    try {
      if (valor1Controller.text == "") throw "O valor 1 é obrigatório";

      if (valor2Controller.text == "") throw "O valor 2 é obrigatório";

      double valor1 = double.parse(valor1Controller.text);
      double valor2 = double.parse(valor2Controller.text);

      switch (prOperacao) {
        case "+":
          _resultado = valor1 + valor2;
          break;

        case "-":
          _resultado = valor1 - valor2;
          break;

        case "*":
          _resultado = valor1 * valor2;
          break;

        case "/":
          _resultado = valor1 / valor2;
          break;
      }

      setState(() {});
    } catch (e) {
      _snackKey.currentState
          ?.showSnackBar(SnackBar(content: Text("Erro ao calcular: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: _snackKey,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Exercício 4"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  controller: valor1Controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Valor 1"),
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.only(top: 20),
                child: TextField(
                  controller: valor2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Valor 2",
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: OutlinedButton(
                        onPressed: () => _calcular("+"), child: Text("+")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: OutlinedButton(
                        onPressed: () => _calcular("-"), child: Text("-")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: OutlinedButton(
                        onPressed: () => _calcular("*"), child: Text("*")),
                  ),
                  OutlinedButton(
                      onPressed: () => _calcular("/"), child: Text("/")),
                ],
              ),
              SizedBox(height: 30),
              Text("= $_resultado",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 48))
            ],
          ))),
    );
  }
}
