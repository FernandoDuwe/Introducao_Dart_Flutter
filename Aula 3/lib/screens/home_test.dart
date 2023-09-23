import "package:flutter/material.dart";

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página inicial"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                  child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                  Text("Menu principal"),
                  SizedBox(height: 30,),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person),
                  )
              ],
            ),
                )),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: () {
                print("Configurações");
              },
            ),
            ExpansionTile(
              title: Text("Cadastros"),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.lightGreen,
                  ),
                  title: Text("Cadastro de pessoas"),
                ),
                ListTile(
                  leading: Icon(Icons.backpack, color: Colors.yellow),
                  title: Text("Cadastro de produtos"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text("Relatórios"),
            )
          ],
        ),
      ),
    );
  }
}
