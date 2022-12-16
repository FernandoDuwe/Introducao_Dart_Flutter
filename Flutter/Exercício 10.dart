/*
  Enunciado: 	Vamos criar uma página inicial de um aplicativo. Essa página deve conter:

              - Um botão flutuante, que ao clicado, exiba uma BottomSheet, com algumas opções;

              - Um botão de atualizar, na AppBar;

              - Um Menu lateral (Drawer), com algumas opções;

              As opções nos Drawers e BottomSheets são de sua escolha, assim como o layout de toda a tela, divirta-se!

*/

import 'package:flutter/material.dart';

class WordFile extends StatelessWidget {
  const WordFile({Key? key}) : super(key: key);

  Drawer Internal_GetDrawer() {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Duwe"),
              accountEmail: Text("fernando_duwe@hotmail.com")),
          ListTile(
            title: Text("Início"),
          ),
          ListTile(
            title: Text("Configurações"),
          ),
          ListTile(
            title: Text("Sobre"),
          ),
        ],
      ),
    );
  }

  void Internal_ShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 250,
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Novo",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  height: 40,
                ),
                Divider(),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.document_scanner),
                        title: Text("Documento"),
                      ),
                      ListTile(
                        leading: Icon(Icons.data_object),
                        title: Text("Objeto"),
                      ),
                      ListTile(
                        leading: Icon(Icons.photo),
                        title: Text("Foto"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  FloatingActionButton Internal_GenerateActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => this.Internal_ShowBottomSheet(context),
      child: Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 10"),
        actions: [
          IconButton(
              onPressed: () => print("Atualizar"), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Text(
          "Clique no botão Novo para inserir um novo item",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      floatingActionButton: this.Internal_GenerateActionButton(context),
      drawer: this.Internal_GetDrawer(),
    );
  }
}
