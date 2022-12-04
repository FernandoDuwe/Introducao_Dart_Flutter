/*
  Enunciado: Crie uma tela com um contador e dois botões.

                Um botão (+) irá incrementar o contador;

                Um botão (-) irá decrementar o contador;

                Exiba o contador em tela;

*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Exercício 3"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Contador: $_contador"),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _contador++;
                              });
                            },
                            child: Text("+")),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _contador--;
                              });
                            },
                            child: Text("-")),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
