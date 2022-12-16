/*
  Enunciado: 	Crie uma tela com um botão centralizado.

              - Ao clicar nesse botão, deve ser exibida uma Snackbar;

              - Essa Snackbar deve ter um botão;

              - Ao clicar nesse botão, exiba uma informação no console;

*/

import 'package:flutter/material.dart';

class Exercicio9 extends StatelessWidget {
  const Exercicio9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 9"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar Snackbar"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Exibindo Snackbar"),
              action: SnackBarAction(
                label: "Detalhes",
                onPressed: () => print("Clicou em Detalhes"),
              ),
            ));
          },
        ),
      ),
    );
  }
}
