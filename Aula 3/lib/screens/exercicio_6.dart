import "package:flutter/material.dart";

class Exercicio6 extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Exercicio6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.ac_unit_outlined,
                color: Colors.lightBlueAccent,
                size: 128,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: "Usuário/Email"
                  ),
                  validator: (value) {
                    if ((value ?? "").trim().isEmpty)
                      return "O campo é obrigatório";
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 20, bottom: 20),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha"
                  ),
                  validator: (value) {
                    if ((value ?? "").length < 6)
                      return "O tamanho da senha deve ser de no mínimo 6 caracteres";

                    if ((value ?? "").length > 12)
                      return "O tamanho da senha deve ser de no máximo 12 caracteres";
                  },
                ),
              ),
              TextButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  print("O formulário é válido :)");
                }
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
