import "package:flutter/material.dart";

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  TextEditingController messageController = TextEditingController();
  String textoDigitado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de uso do TextField"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: messageController,
                decoration: InputDecoration(
                  labelText: "Digite uma mensagem"
                ),
              ),
            ),
            TextButton(onPressed: () {
              setState(() {
                textoDigitado = messageController.text;
              });

              messageController.text = "";
            }, child: Text("Clique aqui")),
            Text(textoDigitado)
          ],
        ),
      ),
    );
  }
}
