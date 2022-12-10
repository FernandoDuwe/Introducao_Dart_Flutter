/*
  Enunciado: Vamos criar uma página de login, com um campo de login, um campo de senha e um
             botão de login.

             Regras:

             - O campo de Login é obrigatório, se não estiver preenchido, você deve avisar
               o usuário;

             - O campo senha precisa ter no mínimo 6 caracteres;

             - O campo senha pode ter no máximo 12 caracteres;
*/

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: this._formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image(image: AssetImage("assets/security.png"))),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
              child: TextFormField(
                validator: (value) {
                  if ((value == null) || (value.isEmpty))
                    return "O campo usuário é obrigatório";

                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Usuário", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 30),
              child: TextFormField(
                validator: (value) {
                  if ((value != null) && (value.length < 6))
                    return "A senha deve possuir pelo menos 6 digitos";

                  if ((value != null) && (value.length > 12))
                    return "A senha deve possuir no máximo 12 digitos";

                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Senha", border: OutlineInputBorder()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 30),
                      child: TextButton(
                          onPressed: () {
                            if (this._formKey.currentState!.validate())
                              print("Clicou em Login");
                          },
                          child: Text("Login"))),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 30),
                    child: TextButton(
                        onPressed: () => print("Clicou em Esqueci minha senha"),
                        child: Text("Esqueci minha senha")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () => print("Clicou em Criar conta"),
                child: Text("Ainda não tem uma conta? Clique aqui")),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
