import "package:flutter/material.dart";
import "package:segunda_aula_flutter/screens/checkbox_example.dart";
import "package:segunda_aula_flutter/screens/checkbox_listtile_example.dart";
import "package:segunda_aula_flutter/screens/column_aligment.dart";
import "package:segunda_aula_flutter/screens/exercicio_6.dart";
import "package:segunda_aula_flutter/screens/exercicio_7.dart";
import "package:segunda_aula_flutter/screens/expansion_tile_example.dart";
import "package:segunda_aula_flutter/screens/form_example.dart";
import "package:segunda_aula_flutter/screens/listview_dynamic_example.dart";
import "package:segunda_aula_flutter/screens/listview_example.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckBoxListTileExample(),
    );
  }
}
