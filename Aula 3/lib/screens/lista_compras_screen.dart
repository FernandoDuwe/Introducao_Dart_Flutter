import "package:flutter/material.dart";

import "../models/item_compra_model.dart";

class ListaCompraScreen extends StatefulWidget {
  const ListaCompraScreen({super.key});

  @override
  State<ListaCompraScreen> createState() => _ListaCompraScreenState();
}

class _ListaCompraScreenState extends State<ListaCompraScreen> {
  List<ItemCompraModel> _itens = [];

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController itemController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  bool itemComprado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      body: ListView.builder(
        itemCount: _itens.length,
        itemBuilder: (context, index) {
          ItemCompraModel item = _itens[index];

          return ListTile(
            leading: Checkbox(
              value: item.comprado,
              onChanged: (value) {
                setState(() {
                  _itens[index].comprado = (value ?? false);
                });
              },
            ),
            title: Text(item.item),
            trailing: Text("R\$ ${item.valor.toStringAsFixed(2)}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          itemComprado = false;
          itemController.text = "";
          valueController.text = "";

          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                child: Form(
                  key: formState,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: itemController,
                          decoration: InputDecoration(labelText: "Item"),
                          validator: (value) {
                            if ((value ?? "").isEmpty)
                              return "O campo é obrigatório";
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: valueController,
                          decoration:
                              InputDecoration(labelText: "Valor (em R\$)"),
                          validator: (value) {
                            if ((value ?? "").isEmpty)
                              return "O campo é obrigatório";

                            double? doubleValue = double.tryParse(value ?? "");

                            if (doubleValue == null)
                              return "O valor informado é inválido";
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: itemComprado,
                            onChanged: (value) {
                              setState(() {
                                itemComprado = value ?? false;
                              });
                            },
                          ),
                          Text("Item comprado?")
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (formState.currentState!.validate()) {
                                setState(() {
                                  _itens.add(ItemCompraModel(
                                      item: itemController.text,
                                      valor: double.parse(valueController.text),
                                      comprado: itemComprado));
                                });

                                Navigator.of(context).pop();
                              }
                            },
                            child: Text("Salvar")),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
