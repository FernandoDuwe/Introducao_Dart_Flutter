import "package:flutter/material.dart";

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1"),
      ),
      body: Center(
        child: Text("Texto do exercício 1", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}
