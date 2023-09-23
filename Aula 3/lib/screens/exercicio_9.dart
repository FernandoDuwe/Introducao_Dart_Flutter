import "package:flutter/material.dart";

class Exercicio9 extends StatelessWidget {
  const Exercicio9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 9"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Exibindo Snackbar"), action: SnackBarAction(
                onPressed: () => print("Clicou no botão da SnackBar"),
                label: "Detalhes",
              ),));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.messenger),
                SizedBox(
                  width: 20,
                ),
                Text("Exibir mensagem")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
