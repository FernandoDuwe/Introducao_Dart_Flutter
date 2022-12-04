/*
  Enunciado: Vamos fazer um app de Natal!
             Para isso, crie um app que exiba uma foto do papai noel,
             e uma foto de uma árvore de natal. 
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Exercício 5"),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 300,
                  image: NetworkImage(
                      "https://images.tcdn.com.br/img/img_prod/618025/arvore_de_natal_com_berry_e_pinha_150_cm_luxo_natal_formosinha_5807_1_c1c431204fc32dc3cbf59b756ee6c39a.jpg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage("assets/happy_santaclaus.png"),
                ),
              ],
            ))));
  }
}
