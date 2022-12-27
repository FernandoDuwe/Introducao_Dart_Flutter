import 'package:flutter/material.dart';

class ListViewDinamica extends StatefulWidget {
  const ListViewDinamica({Key? key}) : super(key: key);

  @override
  State<ListViewDinamica> createState() => _ListViewDinamicaState();
}

class _ListViewDinamicaState extends State<ListViewDinamica> {
  List horarios = ["08:00", "12:00", "13:30", "18:00"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
            itemCount: this.horarios.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  print("Apertou no listview $index");
                },
                leading: Icon(Icons.access_alarm),
                title: Text(this.horarios[index]),
                subtitle: Text("Clique em alterar para editar"),
                trailing: ElevatedButton(
                  child: Text("Alterar"),
                  onPressed: () => print(index),
                ),
              );
            }),
      ),
    );
  }
}
