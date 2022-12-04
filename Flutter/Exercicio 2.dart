/*
  Enunciado: Crie uma tela, utilizando a estrutura padrão de layout (Scaffold).

             Nesta tela, deverão ser exibidos três textos, sendo exibidos
             um em cima do outro. 

             Adicione um espaço no texto do meio, para que os três não fiquem
             muito colados.
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
            title: Text("Exercício 2"),
          ),
          body: Column(
            children: [
              Text("Texto 1"),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Texto 2"),
              ),
              Text("Texto 3"),
            ],
          )),
    );
  }
}
