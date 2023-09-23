import "package:flutter/material.dart";

enum CalculadoraOperacao { soma, subtracao, divisao, multiplicacao }

class Exercicio4 extends StatefulWidget {
  const Exercicio4({super.key});

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  double _result = 0;
  TextEditingController _valor1 = TextEditingController();
  TextEditingController _valor2 = TextEditingController();

  void _calcular(CalculadoraOperacao operacao) {
    double valor1 = double.tryParse(_valor1.text) ?? 0;
    double valor2 = double.tryParse(_valor2.text) ?? 0;

    switch (operacao) {
      case CalculadoraOperacao.soma:
        _result = valor1 + valor2;
        break;

      case CalculadoraOperacao.subtracao:
        _result = valor1 - valor2;
        break;

      case CalculadoraOperacao.multiplicacao:
        _result = valor1 * valor2;
        break;

      case CalculadoraOperacao.divisao:
        _result = valor1 / valor2;
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _valor1,
                decoration: InputDecoration(labelText: "Valor 1"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _valor2,
                decoration: InputDecoration(labelText: "Valor 2"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                    onPressed: () => _calcular(CalculadoraOperacao.soma),
                    child: Text("+")),
                OutlinedButton(
                    onPressed: () => _calcular(CalculadoraOperacao.subtracao),
                    child: Text("-")),
                OutlinedButton(
                    onPressed: () =>
                        _calcular(CalculadoraOperacao.multiplicacao),
                    child: Text("*")),
                OutlinedButton(
                    onPressed: () => _calcular(CalculadoraOperacao.divisao),
                    child: Text("/"))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "= ${_result.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 24, color: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
