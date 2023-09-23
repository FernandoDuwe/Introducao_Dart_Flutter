import "package:flutter/material.dart";

class ListViewDynamicExample extends StatefulWidget {
  const ListViewDynamicExample({super.key});

  @override
  State<ListViewDynamicExample> createState() => _ListViewDynamicExampleState();
}

class _ListViewDynamicExampleState extends State<ListViewDynamicExample> {
  TextEditingController itemController = TextEditingController();

  List<String> itens = [
    "Pizza",
    "Água",
    "Sabonete",
    "Pasta de dente"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      body: ListView.builder(
          itemCount: itens.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print("Clicou no item ${itens[index]}");
              },
              leading: Icon(Icons.production_quantity_limits),
              title: Text(itens[index]),
              subtitle: Text("Item de mercado"),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    itens.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete, color: Colors.red),
              )
            );
          },),
      bottomSheet: Container(
        color: Colors.grey,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: itemController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Item"
                ),
              ),
            ),
            IconButton(onPressed: () {
              if (itemController.text.trim().isNotEmpty) {
                setState(() {
                  itens.add(itemController.text);
                });

                itemController.text = "";
              }
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
