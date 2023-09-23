import "package:flutter/material.dart";

class FormSnackBarExample extends StatefulWidget {
  const FormSnackBarExample({super.key});

  @override
  State<FormSnackBarExample> createState() => _FormSnackBarExampleState();
}

class _FormSnackBarExampleState extends State<FormSnackBarExample> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Usuário",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security),
                    labelText: "Senha",
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(_obscurePassword
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye),
                    )),
                obscureText: _obscurePassword,
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Usuário/senha inválida"),
                      duration: Duration(seconds: 3),
                      action: SnackBarAction(
                        onPressed: () {
                          print("Clicou nos detalhes da snackbar");
                        },
                        label: "Detalhes",
                      ),
                    ));
                  },
                  child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
