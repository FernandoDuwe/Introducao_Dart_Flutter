import "package:flutter/material.dart";
import "package:meu_primeiro_projeto/buttons_screen.dart";
import "package:meu_primeiro_projeto/exercicio_1.dart";
import "package:meu_primeiro_projeto/exercicio_2.dart";
import "package:meu_primeiro_projeto/exercicio_3.dart";
import "package:meu_primeiro_projeto/exercicio_4.dart";
import "package:meu_primeiro_projeto/exercicio_5.dart";
import "package:meu_primeiro_projeto/home_screen.dart";
import "package:meu_primeiro_projeto/image_screen.dart";
import "package:meu_primeiro_projeto/text_field_example.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercicio5()
    );
  }
}
