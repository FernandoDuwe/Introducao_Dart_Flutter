import "package:flutter/material.dart";

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Contador: ${_contador}"),
            Container(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    _contador = _contador + 1;
                  });
                }, child: Text("+")),
                Container(
                  width: 30,
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    _contador = _contador - 1;
                  });
                }, child: Text("-"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
