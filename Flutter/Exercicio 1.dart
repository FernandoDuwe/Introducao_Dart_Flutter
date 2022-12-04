/*
  Enunciado: Crie uma tela, utilizando a estrutura padrão de layout (Scaffold).
             Nesta tela, deve existir um texto centralizado (o que está escrito
             fica a seu critério). Esse texto deve estar em negrito, com um tamanho
             de fonte igual a 24.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Exercício 1"),
          ),
          body: Center(
            child: Text("Flutter é legal :)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          )),
    );
  }
}
