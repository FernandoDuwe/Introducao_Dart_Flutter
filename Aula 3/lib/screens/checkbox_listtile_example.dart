import "package:flutter/material.dart";
import "package:segunda_aula_flutter/models/convidadoModel.dart";

class CheckBoxListTileExample extends StatefulWidget {
  const CheckBoxListTileExample({super.key});

  @override
  State<CheckBoxListTileExample> createState() => _CheckBoxListTileExampleState();
}

class _CheckBoxListTileExampleState extends State<CheckBoxListTileExample> {
  List<ConvidadoModel> _convidados = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de convidados"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _convidados.add(ConvidadoModel(nome: "Convidado nº ${_convidados.length + 1}", confirmado: false));
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: _convidados.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              title: Text(_convidados[index].nome),
              value: _convidados[index].confirmado,
              onChanged: (value) {
                setState(() {
                  _convidados[index].confirmado = (value ?? false);
                });
              },
            );
          },),
    );
  }
}
