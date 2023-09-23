import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha primeira aplicação"),
      ),
      body: Center(
        child: Text("Minha primeira aplicação", style: TextStyle(
          color: Colors.orange,
          fontSize: 22,
          fontWeight: FontWeight.bold
        )),
      )
    );
  }
}
