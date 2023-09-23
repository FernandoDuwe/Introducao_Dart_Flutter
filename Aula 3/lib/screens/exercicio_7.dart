import "package:flutter/material.dart";
import "package:segunda_aula_flutter/models/convidadoModel.dart";

class Exercicio7 extends StatefulWidget {

  Exercicio7({super.key});

  @override
  State<Exercicio7> createState() => _Exercicio7State();
}

class _Exercicio7State extends State<Exercicio7> {
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
            return ListTile(
              leading: Icon(Icons.person, color: (convidados[index].confirmado ? Colors.green : Colors.red)),
              title: Text(convidados[index].nome),
              subtitle: Text("Clique aqui para editar o convidado"),
              trailing: Text((convidados[index].confirmado ? "Confirmado" : "A confirmar")),
              onTap: () {
                print(convidados[index].nome);

                setState(() {
                  convidados[index].confirmado = !convidados[index].confirmado;
                });
              },
            );
          },),
    );
  }
}
