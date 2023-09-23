import "package:flutter/material.dart";

class ButtonScren extends StatefulWidget {
  ButtonScren({super.key});

  @override
  State<ButtonScren> createState() => _ButtonScrenState();
}

class _ButtonScrenState extends State<ButtonScren> {
  Color corText = Colors.black;
  String textoEmTela = "Não clicou em nenhum botão";

  @override
  Widget build(BuildContext context) {
    print("Método build chamado");

    return Scaffold(
      appBar: AppBar(
        title: Text("Trabalhando com botões"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(textoEmTela, style: TextStyle(
              color: corText
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () {
              print("Cliquei no botão TextButton");

              setState(() {
                textoEmTela = "Cliquei no botão TextButton";
                corText = Colors.red;
              });
            }, child: Text("Clique aqui")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              print("Cliquei no botão ElevatedButton");

              setState(() {
                textoEmTela = "Cliquei no botão ElevatedButton";
                corText = Colors.blue;
              });
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Botão"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Clique aqui"),
                ),
                Text("1234")
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(onPressed: () {
              print("Cliquei no botão OutlinedButton");

              setState(() {
                textoEmTela = "Cliquei no botão OutlinedButton";
                corText = Colors.green;
              });
            }, child: Text("Clique aqui")),
          )
        ],
      ),
    );
  }
}
