import "package:flutter/material.dart";

class FormExample extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController enderecoController = TextEditingController();

  FormExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro simples"),
        actions: [
          IconButton(onPressed: () {
            if (formKey.currentState!.validate()) {
              print("Gravar o registro :D");
            }
          }, icon: Icon(Icons.save))
        ],
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nomeController,
                  validator: (value) {
                    if ((value ?? "").isEmpty)
                      return "O nome é obrigatório";

                    if ((value ?? "").indexOf(" ") == -1)
                      return "O sobrenome é obrigatório";
                  },
                  decoration: InputDecoration(
                    labelText: "Nome"
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: enderecoController,
                  validator: (value) {
                    if ((value ?? "").length < 5)
                      return "O endereço informado é muito pequeno";
                  },
                  decoration: InputDecoration(
                    labelText: "Endereço"
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
