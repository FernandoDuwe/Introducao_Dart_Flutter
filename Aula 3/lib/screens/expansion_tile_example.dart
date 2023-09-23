import "package:flutter/material.dart";
import "package:segunda_aula_flutter/models/convidadoModel.dart";

class ExpansionTileExample extends StatefulWidget {
  ExpansionTileExample({super.key});

  @override
  State<ExpansionTileExample> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  final List<ConvidadoModel> convidados = [
    ConvidadoModel(nome: "Fernando", confirmado: true),
    ConvidadoModel(nome: "Silvia", confirmado: true),
    ConvidadoModel(nome: "Henrique", confirmado: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 7"),
      ),
      body: ListView.builder(
        itemCount: convidados.length,
        itemBuilder: (context, index) {
          ConvidadoModel convidado = convidados[index];

          return ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            title: Text(convidado.nome),
            initiallyExpanded: true,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text((convidado.confirmado ? "Confirmado" : "A confirmar")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      convidados[index].confirmado = !convidados[index].confirmado;
                    });
                  }, child: Text(convidado.confirmado ? "Remover confirmação" : "Confirmar"))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
