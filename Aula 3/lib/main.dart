import "package:flutter/material.dart";
import "package:segunda_aula_flutter/screens/form_example.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormExample(),
    );
  }
}
