import "package:flutter/material.dart";

class CheckBoxExample extends StatefulWidget {

  CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool marcado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Exemplo"),
      ),
      body: Center(
        child: Checkbox(
          value: marcado,
          onChanged: (value) {
            print(value);

            setState(() {
              marcado = (value ?? false);
            });
          },
        ),
      ),
    );
  }
}
